$packageName = 'xamarin' 
$installerType = 'exe' 
$url = 'http://download.xamarin.com/Installer/Windows/XamarinInstaller.exe' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)
 
Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes