# Make it easy
# Get parameter to use on creating the name of items and an unique number relate to the certificate to get days to expire

param (
       [Parameter(Mandatory = $true)][string] $ActionType,
       [Parameter(Mandatory = $false)] [string] $PSCHILD
       )

if ($ActionType -eq "discover"){
    $result_json = [pscustomobject]@{
                'data' = @(
                    Get-ChildItem -Path Cert:\LocalMachine\My\  | ForEach-Object {
                      [pscustomobject]@{                     
                                        '{#CN_SHORT}'     = $_.Subject.Split(",")[0].Split("=")[1] ;                                     
                                        '{#PSCHILDNAME}'  = $_.PSChildName;
                                        '{#NOTAFTER}'     = $_.NotAfter.ToShortDateString();
                                        '{#DAYSTOEXPIRE}' = (NEW-TIMESPAN -End $_.NotAfter).Days;
                                       }
                            }
                          )
                    }	| ConvertTo-Json    
                    [Console]::WriteLine($result_json)
        }
if ($ActionType -eq "get") {
        # unique number is PSChildName
        if ($PSCHILD -ne $null) {
            $cert = Get-ChildItem -Path Cert:\LocalMachine\My\ | Where-Object {$_.PSChildName -eq "$PSCHILD"}
            return ((New-TimeSpan -End $cert.NotAfter).Days)
        }
 }