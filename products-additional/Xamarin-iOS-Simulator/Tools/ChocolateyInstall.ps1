$version = '0.10.0.5'

$packageName = 'xamarin.iossimulator' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/xamarin-simulator/Xamarin.Simulator.Installer.' + $version + '.msi' 
$checksum32 = '504AFAF9B0A3DE7EB776D12BCA098BD921712045C8FE6B27886ABBFC0E6C3BC0' 
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
