$version = '0.10.1.1'

$packageName = 'xamarin.iossimulator' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/xamarin-simulator/Xamarin.Simulator.Installer.' + $version + '.msi' 
$checksum32 = 'C59A5D8693C208E8E893C08D2D0B2E35EC24CF28A8E928982910545C18E51280' 
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
