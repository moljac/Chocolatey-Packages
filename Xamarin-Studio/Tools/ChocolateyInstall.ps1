$version = '6.1.0.5441'

$packageName = 'xamarin.studio' 
$installerType = 'msi' 
$url = 'http://bosstoragemirror.blob.core.windows.net/wrench/monodevelop-windows-cycle8/68/68292d1ab289911c815ddc715dd7cc29a9752f9f/XamarinStudio-' + $version + '.msi' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
