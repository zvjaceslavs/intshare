################################################################################
# get_queues.ps1
#
################################################################################

# Get all of the MSMQ Queues
$queues = Get-MsmqQueue

# Create the response template to build off of
$response = @{data = @()}

# Add each of the queues with the appropriate key ("{#QUEUE}") to the data array
ForEach($q in $queues) {
  $preparedQueueName = $q.QueueName -replace "^[A-Za-z0-9\$]+\\", ""
  $response['data'] += @{'{#QUEUE}' = $preparedQueueName}
}

# Convert the response to JSON for Zabbix
$response = ConvertTo-Json $response

# Write the JSON encodedresponse fo the Zabbix agent to send to the server
Write-Host $response