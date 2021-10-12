
#requires -version 3

<#
.SYNOPSIS
    Requrired PowerShell 3.0 or higher
.DESCRIPTION
  This sricpt using for LLD and trapper
.PARAMETER <ActionType>
	Type of action: discover, get and other
.PARAMETER <Key>
	Key - attirbute for 	
.PARAMETER <Value>
	Value - var for key, may be single or multiply
.INPUTS
  Input 3 variables

.OUTPUTS
  Output in JSON format for Zabbix in Discover - 
  single data line for other functions
.NOTES
  Version:        1.1
  Author:         psh@routepackets.net	
  Creation Date:  17/11/2019
    
.EXAMPLE
  exch_host.ps1 -ActionType "$1" -Key "$2" -Value "$3"
#>

Param(
    [Parameter(Mandatory = $true)][String]$ActionType,
    [Parameter(Mandatory = $true)][String]$Key,
    [Parameter(Mandatory = $false)][String]$Value
)
# to use Exchange management shell 
add-pssnapin Microsoft.Exchange.Management.PowerShell.SnapIn  
$ActionType = $ActionType.ToLower()
$Key = $Key.ToLower()
$Value = $Value.ToLower()


# Examples. "DOMAIN\" or "domain.com\" - Easier to remember, use the darn main AD tree DNS name!
$DomainName = "mx.dc.routepackets.net\" 
# Examples.  "domain.com/Mailboxes" for specified folder or "domain.com/" for the whole darn AD tree!
# My Advise: Use the *WHOLE AD TREE* and set the ~Discovery Interval to 24h~
$OUtoMonitor = "mx.dc.routepackets.net/"

# Correct Cyrillic symbols (lol, cry"I"Lic) {I'm getting bored scripting}
[console]::OutputEncoding = [System.Text.UTF8Encoding]::new()
	
if ($ActionType -eq "discover") {
    # Discover MAILBOXES 
    if ($Key -eq "mailbox") {	
      $result_json = [pscustomobject]@{
            'data' = @(
                get-mailbox -OrganizationalUnit $OUtoMonitor | ForEach-Object {
                    $mailbox_alias = $_.alias;
                    [pscustomobject]@{
                        '{#MAILALIAS}' = $mailbox_alias.ToLower()
                    }
                }					
            )
        }| ConvertTo-Json

        [Console]::WriteLine($result_json)
    }
 }

# Get (Quota) of {#MAILALIAS} Mailbox.
# Note: User Mailboxes needs to be configured for SendReceiveQuotas - ~UNLIMITED~ will result "Mailbox Quota Size" in grapohs to display *No Data*
# So, in otherwords: Use your darn ECP and Set the mailbox Quotas off of "Use the default quota settings from the mailbox database" and ~CUSTOMIZE~ that "USER!"
# Then, the "Magic" will happen in Zabix"

if ($ActionType -eq "mailboxquota") {

    $mailbox_quota = Get-Mailbox $key | Select ProhibitSendReceiveQuota
        $mailbox_quota = $mailbox_quota.ProhibitSendReceiveQuota.Value.ToBytes()
    [Console]::WriteLine($mailbox_quota)
  
}

#Get (Quota) information of {#MAILALIAS}'s Online Archive
#Note: No ~ARCHIVE~ No *PROBLEM!* Just shows *No Data* in Graphs

if ($ActionType -eq "archivequota") {
 
    $mailbox_quota = Get-Mailbox -Identity $key -Archive -ResultSize Unlimited | Select ArchiveQuota
        $mailbox_quota = $mailbox_quota.ArchiveQuota.Value.ToBytes()
    [Console]::WriteLine($mailbox_quota)
  
}

# Get Mailbox Overall Percentage (Percentage, Is used *LOOSELY* HERE)

if ($ActionType -eq "mailboxpercentage") {

    $mailbox_size = Get-MailboxStatistics $Key
    $mailbox_quota = Get-Mailbox $key | Select ProhibitSendReceiveQuota
        $mailbox_size = $mailbox_size.TotalItemSize.Value.ToBytes()
        $mailbox_quota = $mailbox_quota.ProhibitSendReceiveQuota.Value.ToBytes()
        $mailbox_percent = (“{0:N2}” -f ($mailbox_size / $mailbox_quota*100))

    [Console]::WriteLine($mailbox_percent)
  
}

# Get Online Archive Overall Percentage (Percentage, Is used *LOOSELY* HERE)

if ($ActionType -eq "archivepercentage") {

    $archive_size = Get-MailboxStatistics $Key -archive
    $archive_quota = Get-Mailbox -Identity $key -Archive -ResultSize Unlimited | Select ArchiveQuota
        $archive_size = $archive_size.TotalItemSize.Value.ToBytes()
        $archive_quota = $archive_quota.ArchiveQuota.Value.ToBytes()
        $archive_percent = (“{0:N2}” -f ($archive_size / $archive_quota*100))

    [Console]::WriteLine($archive_percent)
  
}

 # Get (Total Size) of {#MAILALIAS} Mailbox.

if ($ActionType -eq "mailbox") {

    $mailbox_size = Get-MailboxStatistics $Key 
    $mailbox_size = $mailbox_size.TotalItemSize.Value.ToBytes()
    [Console]::WriteLine($mailbox_size)
  
}

# Get (Total Size) of {#MAILALIAS} "Drafts" Folder.

if ($ActionType -eq "archives") {

    $mailbox_size = Get-MailboxStatistics $Key -archive
    $mailbox_size = $mailbox_size.TotalItemSize.Value.ToBytes()
    [Console]::WriteLine($mailbox_size)
  
}

# Get (Total Size) of {#MAILALIAS} "Inbox" Folders, SubFolders and Such.

if ($ActionType -eq "inbox") {

    $total_size  = ""
    $inbox_size = 0 
    Get-MailboxfolderStatistics -Identity $Key -folderscope Inbox | ForEach-Object {
        $inbox_size = $inbox_size + $_.FolderSize.ToBytes()
    }
    
    $total_size = $inbox_size
    [Console]::WriteLine($total_size)
}

# Get (Total Size) of {#MAILALIAS} "Sent Items" Folders, SubFolders and Such.

if ($ActionType -eq "sent") {

    $total_size  = ""
    $sent_size = 0 
    Get-MailboxfolderStatistics -Identity $Key -folderscope SentItems | ForEach-Object {
        $sent_size = $sent_size + $_.FolderSize.ToBytes()
    }
    
    $total_size = $sent_size
    [Console]::WriteLine($total_size)
}

# Get (Total Size) of {#MAILALIAS} "Deleted Items" Folders, SubFolders and Such.

if ($ActionType -eq "deleted") {

    $total_size  = ""
    $deleted_size = 0 
    Get-MailboxfolderStatistics -Identity $Key -folderscope DeletedItems | ForEach-Object {
        $deleted_size = $deleted_size + $_.FolderSize.ToBytes()
    }
    
    $total_size = $deleted_size
    [Console]::WriteLine($total_size)
}

# Get (Total Size) of {#MAILALIAS} "Junk Mail" Folders, SubFolders and Such.

if ($ActionType -eq "junkmail") {

    $total_size  = ""
    $junkmail_size = 0 
    Get-MailboxfolderStatistics -Identity $Key -folderscope JunkEmail | ForEach-Object {
        $junkmail_size = $junkmail_size + $_.FolderSize.ToBytes()
    }
    
    $total_size = $junkmail_size
    [Console]::WriteLine($total_size)
}

# Get (Total Size) of {#MAILALIAS} "Drafts" Folders, SubFolders and Such.

if ($ActionType -eq "drafts") {

    $total_size  = ""
    $draft_size = 0 
    Get-MailboxfolderStatistics -Identity $Key -folderscope Drafts | ForEach-Object {
        $draft_size = $draft_size + $_.FolderSize.ToBytes()
    }
    
    $total_size = $draft_size
    [Console]::WriteLine($total_size)
}

