################################################################################
# get_queuemessagecount.ps1
#
################################################################################

Param ([String] $name = 0)
$queue = Get-MsmqQueue -Name $name
Write-Host $queue.MessageCount
