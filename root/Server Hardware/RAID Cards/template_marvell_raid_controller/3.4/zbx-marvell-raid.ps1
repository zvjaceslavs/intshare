<#
    .SYNOPSIS
    Script for getting data from Marvell RAID Controller to Zabbix monitoring system.

    .DESCRIPTION
    The script may generate LLD data for Marvell RAID Controllers, Virtual Drives (other word Logical).
    Physical Drives not processed because not suitable info provided from MSU.

    Also it can takes some components health status. It's using Marvel Storage Utility to
    connect to controller, so you must install it first:

    https://support.hpe.com/hpsc/swd/public/detail?swItemId=MTX_17d87af242a144cbb3a954352c&swEnvO

    Tested on PowerShell 4.0 (should work on older too).
    
    .PARAMETER action
    What we want to do - make LLD or get component health status (takes: lld, health)

    .PARAMETER part
    Marvell RAID component - host bus adapter, logical drive (takes: hba, vd)

    .PARAMETER identity
    Part of target, depends of context:
    For hba: main hba status, combined result of states of modules;
    For virtual drives: id of virtual drive (takes: 0, 1, 2, 3, 4 etc);

    .EXAMPLE
    marvell-raid.ps1 -action lld -part hba
    {"data":[{"{#HBA.ID}":"0","{#HBA.PRODUCT}":"1b4b-9230"}]}

    .EXAMPLE
    marvell-raid.ps1 health vd 0
    1

    .NOTES
    Author: GOID1989
    Github: https://github.com/GOID1989/zbx-marvell-raid
#>

Param (
    [ValidateSet("lld","health")][Parameter(Position=0, Mandatory=$True)][string]$action,
    [ValidateSet("hba","vd")][Parameter(Position=1, Mandatory=$True)][string]$part,
    [string][Parameter(Position=2, Mandatory=$False)]$identity
)

# Path to MSU
$cli = "C:\Program Files (x86)\Marvell\storage\interface\mvsetup.exe"

switch($action)
{
    "lld" {
        switch($part){
            "vd" {
                $vars = & "$cli" "info -o vd".split() | Where-Object {$_ -match "id:|name:" }
                # Build JSON object for each parameters pairs
                for($i = 0; $i -lt $vars.count; $i=$i+2 )
                {
                    [array]$obj_list += [psobject]@{"{#VD.ID}" = ($vars[$i] -split ":")[1].Trim();
                                                    "{#VD.NAME}" = ($vars[$i+1] -split ":")[1].Trim()}
                }
            }
            "hba" {

                $vars = & "$cli" "info -o hba".split() | Where-Object {$_ -match "^Adapter ID:|^Product:" }
                for($i = 0; $i -lt $vars.count; $i=$i+2 )
                {
                    [array]$obj_list += [psobject]@{"{#HBA.ID}" = ($vars[$i] -split ":")[1].Trim();
                                                    "{#HBA.PRODUCT}" = ($vars[$i+1] -split ":")[1].Trim()}
                }
            }
        }
        Write-Host (ConvertTo-Json @{"data" = $obj_list} -Compress)
    }

    "health" {
        switch($part){
            "vd" {
                $vars = & "$cli" "info -o vd -i $($identity)".split() | Where-Object {$_ -match "^status:" }
                write-host ($vars -replace "^status:\s{1,}","" -replace "functional$","1")
            }
            "hba" {
                $vars = & "$cli" "info -o hba -i $($identity)".split() | Where-Object {$_ -match "^Autoload image health|^Boot loader image health|^Firmware image health|^Boot ROM image health|^HBA info image health" }
                #If some of attribs is NOT Healthy - then overall status is BAD
                foreach($v in $vars){
                    if(!$v.contains("Healthy")){ Write-host "0"; break; }
                }
                #Overwise everything good
                Write-host "1";
            }
        }  
    }
}