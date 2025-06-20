


#Get Hardware Hash WithOut Admin Rights
#Change Current Diretory so OA3Tool finds the files written in the Config File 
&cd $PSScriptRoot
#Delete old Files if exits
if (Test-Path $PSScriptRoot\OA3.xml) 
{
  Remove-Item $PSScriptRoot\OA3.xml
}

#Get SN from WMI
$serial = (Get-WmiObject -Class Win32_BIOS).SerialNumber
$SystemInfo = Get-CimInstance -Class Win32_ComputerSystem
$Manufacturer = $SystemInfo.Manufacturer.Trim()
$model = $SystemInfo.Model.Trim()

#Run OA3Tool
$hide = &$PSScriptRoot\oa3tool.exe /Report /ConfigFile=$PSScriptRoot\OA3.cfg /NoKeyCheck


#Check if Hash was found
If (Test-Path $PSScriptRoot\OA3.xml) 
{

#Read Hash from generated XML File
[xml]$xmlhash = Get-Content -Path "$PSScriptRoot\OA3.xml"
$hash = $xmlhash.Key.HardwareHash

#Delete XML File
del $PSScriptRoot\OA3.xml

}

#################################################################################
Remove-Item -Path "$env:USERPROFILE\Downloads\Hash.txt" -Force -ErrorAction SilentlyContinue
$hash > $env:USERPROFILE\Downloads\Hash.txt
Write-Host "Please check your downloads folder for hash.txt"
