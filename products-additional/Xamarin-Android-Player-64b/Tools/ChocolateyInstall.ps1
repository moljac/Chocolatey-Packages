$version = '0.6.5'

$packageName = 'xamarin.android.player.64b' 
$installerType = 'exe' 
$url = 'http://xamarin-android-player.s3.amazonaws.com/player/win/0.6.5/XAP-Beta-15.43-v0.6.5-amd64.exe' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.android.player.64b.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
