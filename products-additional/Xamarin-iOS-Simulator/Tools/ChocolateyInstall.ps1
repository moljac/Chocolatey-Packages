$version = '1.0.0.13'

$packageName = 'xamarin.iossimulator' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/xamarin-simulator/Xamarin.Simulator.Installer.' + $version + '.msi' 
$checksum32 = '98A1DC2E739638044A55356B7C246EE677F2ABB3D9EB5D420FE47487D9EF4A42' 
$checksumtype32 = 'sha256'
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin-ios-simulator.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage `
    $packageName `
    $installerType `
    $silentArgs `
    $url `
    -Checksum       $checksum32 `
    -ChecksumType   $checksumtype32 `
    -validExitCodes $validExitCodes
