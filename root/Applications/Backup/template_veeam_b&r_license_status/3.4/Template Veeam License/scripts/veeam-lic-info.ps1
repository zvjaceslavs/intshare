$CheckParam = $args[0]

if ($args.Count -lt 1) {
    echo "There is no arguments!"
    exit
}


Function GetInfo($CheckParam)
{
$regBinary = (Get-Item 'HKLM:\SOFTWARE\VeeaM\Veeam Backup and Replication\license').GetValue('Lic1')
$veeamLicInfo = [string]::Join($null, ($regBinary | % { [char][int]$_; }))
$sa = $veeamLicInfo.Split("`r`n")

foreach ($string in $sa)
{
    $temp = $string.Split("=")
    $param=$temp[0]
    if ($param -eq $CheckParam)
    {

        if ($CheckParam -eq "License type")
        {
            echo $temp[1]
        }
        else
        {
        if ($temp[1] -eq "no expiration")
        {
            echo "-1"
        }
        else
        {
            #convert date
            $RuDateArr = $temp[1].Split("/")
            $d=$RuDateArr[0]
            $m=$RudateArr[1]
            $y=$RuDateArr[2]
            $UsDateStr = $m+"/"+$d+"/"+$y
            $UsDate=[datetime]$UsDateStr
            $ToDay = Get-Date
            $days = ($UsDate - $ToDay).Days

            if ($days -le 0){
                echo 0
            }else{
                echo $days
            }
        }
        exit
        }
    }
}
}

switch ($CheckParam) {
    "LicExpireDays"
    {
        GetInfo("Expiration date");
    }

    "SupportExpireDays"
    {
        GetInfo("Support expiration date")
    }
    "LicType"
    {
        GetInfo("License type")
    }

    default {
        echo "Query type is not walid!"
    }
}
