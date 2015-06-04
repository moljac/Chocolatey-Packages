$version = '5.9.3.1-0'

$packageName = 'xamarin.studio' 
$installerType = 'msi' 
$url = 'http://download.xamarin.com/studio/Windows/XamarinStudio-' + $version + '.msi' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes