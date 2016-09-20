$version = '0.10.0.5'

$packageName = 'xamarin.iossimulator' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/xamarin-simulator/Xamarin.Simulator.Installer.' + $version + '.msi' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin-ios-simulator.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
