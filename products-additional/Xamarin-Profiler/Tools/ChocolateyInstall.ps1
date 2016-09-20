$version = '0.34.1'

$packageName = 'xamarin.profiler' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/profiler/profiler-windows.msi' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.profiler.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
