$version = '0.6.5'

$packageName = 'xamarin.android.player' 
$installerType = 'exe' 
$url32 = 'http://xamarin-android-player.s3.amazonaws.com/player/win/0.6.5/XAP-Beta-15.43-v0.6.5-i386.exe' 
$url64 = 'http://xamarin-android-player.s3.amazonaws.com/player/win/0.6.5/XAP-Beta-15.43-v0.6.5-amd64.exe' 
$checksum32 = '90B40F0BE7B0314ADA95F43BF38C1F94D97084842F85A6A8F5BF9CF83E004001' 
$checksumtype32 = 'sha256' 
$checksum64 = '51E967C23506872A2AEE5D962662D9A937CE9D64B80420B647218BB5C08B911D' 
$checksumtype64 = 'sha256' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.android.player.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage `
    $packageName `
    $installerType `
    $silentArgs `
    -Url      $url32 `
    -Url64bit $url64 `
    -Checksum       $checksum32 `
    -ChecksumType   $checksumtype32 `
    -Checksum64     $checksum64 `
    -ChecksumType64 $checksumtype64 `
	-validExitCodes $validExitCodes
