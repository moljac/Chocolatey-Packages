$version = '5.10.3.51-0'

$packageName = 'xamarin.studio' 
$installerType = 'msi' 
$url = 'http://download.xamarin.com/studio/Windows/XamarinStudio-' + $version + '.msi' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
