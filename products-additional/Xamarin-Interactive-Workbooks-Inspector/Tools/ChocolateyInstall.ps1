$version = '1.0.0.0'

$packageName = 'xamarin.interactive.aka.workbooks.inspector' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/interactive/XamarinInteractive-' + $version + '.msi' 
$checksum32 = '3D18FF404995B731C4F0B94B97B44A7F604AE393D712EA81FC87477AB8CD975F' 
$checksumtype32 = 'sha256'
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage `
    $packageName `
    $installerType `
    $silentArgs `
    $url `
    -Checksum       $checksum32 `
    -ChecksumType   $checksumtype32 `
    -validExitCodes $validExitCodes
