$version = '4.2.0.680'

$packageName = 'xamarin.visualstudio' 
$installerType = 'msi' 
$url = 'https://bosstoragemirror.blob.core.windows.net/wrench/xvs-win-cycle8/c4/c4382f51543833deb16514ef8f0d57803e89ce6c/Xamarin.VisualStudio_' + $version + '.msi' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
