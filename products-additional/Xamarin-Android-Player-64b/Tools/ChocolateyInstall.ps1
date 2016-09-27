$version = '0.6.5'

$packageName = 'xamarin.android.player.64b' 
$installerType = 'exe' 
$url64 = 'http://xamarin-android-player.s3.amazonaws.com/player/win/0.6.5/XAP-Beta-15.43-v0.6.5-amd64.exe' 
$checksum64 = '51E967C23506872A2AEE5D962662D9A937CE9D64B80420B647218BB5C08B911D' 
$checksumtype64 = 'sha256' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.android.player.64.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage `
    $packageName `
    $installerType `
    $silentArgs `
    -Url      $url64 `
    -Checksum       $checksum64 `
    -ChecksumType   $checksumtype64 `
	-validExitCodes $validExitCodes
