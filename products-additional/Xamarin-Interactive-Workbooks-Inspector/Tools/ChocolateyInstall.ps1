$version = '0.10.0.0'

$packageName = 'xamarin.interctive.aka.workbooks.inspector' 
$installerType = 'msi' 
$url = 'https://download.xamarin.com/inspector/XamarinInteractive-' + $version + '.msi' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
