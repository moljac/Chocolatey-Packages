$version = '4.0.3.214'

$packageName = 'xamarin.visualstudio' 
$installerType = 'msi' 
$url = 'http://download.xamarin.com/XamarinforVisualStudio/Windows/Xamarin.VisualStudio_' + $version + '.msi' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
