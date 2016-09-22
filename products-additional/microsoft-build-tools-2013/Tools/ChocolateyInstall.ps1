$version = '2013'

$packageName = 'microsoft.build.tools.2013' 
$installerType = 'exe' 
$url32 = 'https://download.microsoft.com/download/9/B/B/9BB1309E-1A8F-4A47-A6C5-ECF76672A3B3/BuildTools_Full.exe' 
$checksum32 = '4B74AEC35AE5D422CD107C4AB6B0647BDDC117CC5D0F0EF6ECD47A5AC0337EA7' 
$checksumtype32 = 'sha256' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\microsoft.build.tools.2013.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage `
    $packageName `
    $installerType `
    $silentArgs `
    -Url      $url32 `
    -Checksum       $checksum32 `
    -ChecksumType   $checksumtype32 `
	-validExitCodes $validExitCodes
