$strZVMIP = "IPADDRES_OR_FQDN"
$strZVMPort = "PORT" # Usually TCP:9669
$userName = "USERNAME" # vCenter Username
$password = "PASSWORD" # vCenter password

# Allow self-signed certificates
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}
$progressPreference = "silentlyContinue"

# Authentication - Get a session key
$baseURL = "https://" + $strZVMIP + ":"+$strZVMPort
$xZertoSessionURI = $baseURL +"/v1/session/add"
$authInfo = ("{0}:{1}" -f $userName,$password)
$authInfo = [System.Text.Encoding]::UTF8.GetBytes($authInfo)
$authInfo = [System.Convert]::ToBase64String($authInfo)
$headers = @{Authorization=("Basic {0}" -f $authInfo)}
$body = '{"AuthenticationMethod": "1"}'
$contentType = "application/json"
$xZertoSessionResponse = Invoke-WebRequest -Uri $xZertoSessionURI -Headers $headers -Method POST -Body $body -ContentType $contentType 
$zertSessionHeader = $xZertoSessionResponse.headers.get_item("x-zerto-session")

$ITEM = [string]$args[0]
$VpgIdentifier = [string]$args[1]

switch ($ITEM) {
	"Discovery" {
		$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
		$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
		$VPGs = $data.VPGIdentifier 
		#Count the VPGs
		$count = $VPGs | Measure-Object
		$count = $VPGs.count
		#Open the JSON output
		$JSON = '{"data": [{ '
		# Add the various elements to the JSON
		foreach ($VpgIdentifier in $VPGs) {
			$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
			$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
			$data = $data | where {$_.VpgIdentifier -eq $VpgIdentifier}  
			$JSON = $JSON + '"{#VPGIDENTIFIER}": "' + $VpgIdentifier + '",'
			$JSON = $JSON + '"{#VPGNAME}": "' + $data.VPGName + '"'
			if ($count -eq 1) {
				# Close JSON
				$JSON = $JSON + '}]}'
			} else {
				$JSON = $JSON + '},{'
				$count--
			}
		}
		#Output JSON
		$JSON
	}
	"VPGName" {
		$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
		$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
		$data = $data | where {$_.VpgIdentifier -eq $VpgIdentifier}  
		$data.VPGName
	}
	"SourceSite" {
		$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
		$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
		$data = $data | where {$_.VpgIdentifier -eq $VpgIdentifier}  
		$data.SourceSite
	}
	"TargetSite" {
		$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
		$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
		$data = $data | where {$_.VpgIdentifier -eq $VpgIdentifier}  
		$data.TargetSite
	}
	"UsedStorageInMB" {
		$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
		$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
		$data = $data | where {$_.VpgIdentifier -eq $VpgIdentifier}  
		$data = $data.UsedStorageInMB 
		$data = $Data *= 1000000 # From MB bytes
		$data
	}
	"VmsCount" {
		$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
		$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
		$data = $data | where {$_.VpgIdentifier -eq $VpgIdentifier}  
		$data.VmsCount
	}
	"LastTest" {
		$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
		$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
		$data = $data | where {$_.VpgIdentifier -eq $VpgIdentifier}  
		#Convert to epoch time for Zabbix
		$unixEpochStart = new-object DateTime 1970,1,1,0,0,0,([DateTimeKind]::Utc)
		[int]($data.LastTest - $unixEpochStart).TotalSeconds
	}
	"ActualRPO" {
		$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
		$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
		$data = $data | where {$_.VpgIdentifier -eq $VpgIdentifier}  
		$data.ActualRPO
	}
	"Status" {
		$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
		$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
		$data = $data | where {$_.VpgIdentifier -eq $VpgIdentifier}  
		$data.Status
	}
	"RawVPGData" {
		$vpgListApiUrl = "https://" + $strZVMIP + ":"+$strZVMPort+"/v1/vpgs"
		$data = Invoke-RestMethod -Uri $vpgListApiUrl -Header @{ "x-zerto-session" = $zertSessionHeader }
		$data
	}
}


