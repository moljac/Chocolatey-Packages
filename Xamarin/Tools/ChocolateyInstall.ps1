
$packageName = 'xamarin' 
$toolsDir   = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$installerType = 'exe' 
$url = 'http://download.xamarin.com/Installer/Windows/XamarinInstaller.exe' 
$checksum = '981924CD0CC80204791FCB9B7BC271B5829A890E96FD138BA979A1EDD5ED9FA3'

$checksumtype = 'sha256' 
$silentArgs = "/VERYSILENT /NORESTART /NOCANCEL /PASSIVE /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)
 
$ErrorActionPreference = 'Stop';
 
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $toolsDir "install-xamarin.ahk"
$ahkProc = Start-Process `
				-FilePath $ahkExe `
                -ArgumentList $ahkFile `
				-PassThru `
				-Verb RunAs
				
Install-ChocolateyPackage `
    $packageName `
    $installerType `
    $silentArgs `
    -Url      $url `
    -Checksum       $checksum `
    -ChecksumType   $checksumtype `
	-validExitCodes $validExitCodes `

 
$ahkId = $ahkProc.Id
Write-Debug "$ahkExe start time:`t$($ahkProc.StartTime.ToShortTimeString())"
Write-Debug "Process ID:`t$ahkId"
 

#    --not-silent `
#   --verbose
#	--debug `
#    --accept-license `
#    --confirm `
	