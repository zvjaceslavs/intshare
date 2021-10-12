# Query to get system database full backup status.

Param(
    [string]$InstName,
    [string]$DBName,
	[string]$SYSDBFTIME1,
	[string]$SYSDBFTIME2,
	[string]$SYSDBFTIME3
)
 

if ($InstName -and $DBName)
{
    $fullInstanceName = if ($InstName -eq 'MSSQLSERVER') { $env:computername } else { "$env:computername\$InstName" }
    $connectionString = "Server = $fullInstanceName; Integrated Security = True;"

    # Create a new connection object with that connection string
    $connection = New-Object System.Data.SqlClient.SqlConnection
    $connection.ConnectionString = $connectionString
    # Try to open our connection, if it fails we won't try to run any queries
    try
    {
        $connection.Open()
    }
    catch
    {
		#"Error connecting to $fullInstance!"
        Write-Host "30"
		
        $DataSet = $null
        $connection = $null
    }
    try
    {
        # Only run our queries if connection isn't null
        if ($connection -ne $null)
        {
            # Create a MSSQL request
            $SqlCmd = New-Object System.Data.SqlClient.SqlCommand
            	# Select the current instance name and system database full backup status. 
				# Where database = the database that was passed on the cmdline.
				# Adjust "DATEADD(hh,-$SYSDBFTIME1,GETDATE())" according to your needs. Current setting is:
				#	Throw 1 when full backup is not older then $SYSDBFTIME1 hours.
				#	Throw 2 when full backup is older then $SYSDBFTIME1 hours.
				#	Throw 3 when full backup is older then $SYSDBFTIME2 hours.
				#	Throw 4 when full backup is older then $SYSDBFTIME3 hours.
				#	Throw 0 when differential backup status is not retrieved.
            $SqlCmd.CommandText = "SELECT ISNULL(MAX(state),0) AS state
									FROM (SELECT TOP 1 CASE
											WHEN backup_finish_date > DATEADD(hh,-$SYSDBFTIME1,GETDATE()) THEN 1
											WHEN backup_finish_date <= DATEADD(hh,-$SYSDBFTIME1,GETDATE()) and backup_finish_date > DATEADD(hh,-$SYSDBFTIME2,GETDATE()) THEN 2
											WHEN backup_finish_date <= DATEADD(hh,-$SYSDBFTIME2,GETDATE()) and backup_finish_date > DATEADD(hh,-27,GETDATE()) THEN 3
											WHEN backup_finish_date <= DATEADD(hh,-$SYSDBFTIME3,GETDATE()) THEN 4
										ELSE 0
										END AS state
									FROM msdb.dbo.backupset
									WHERE database_name = '$DBName'
										AND type = 'D'
										AND backup_finish_date = (SELECT MAX(backup_finish_date)
													FROM msdb.dbo.backupset
													WHERE database_name = '$DBName'
													AND type = 'D'
													AND database_name IN ('master', 'model', 'msdb')))
									AS state"
            $SqlCmd.Connection = $Connection
            $SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter
            $SqlAdapter.SelectCommand = $SqlCmd
            $DataTable = New-Object System.Data.DataTable
            $SqlAdapter.Fill($DataTable) > $null
            $Connection.Close()
        }
    }
    catch
    {
        # If our query failed, set our dataset to null
		# Write-Host "Error executing query on $fullInstance!"
        Write-Host "31"
		
        $DataTable = $null
    }
    # We get a set of system database full backup statuses. Append them to the database name variable.
    if ($DataTable -and $DataTable.Rows.Count)
    {
        Write-Host $DataTable.Rows[0].state
    }
}