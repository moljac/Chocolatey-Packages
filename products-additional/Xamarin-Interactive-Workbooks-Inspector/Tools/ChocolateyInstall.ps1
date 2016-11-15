$version = '0.99.2.0'

$packageName = 'xamarin.interactive.aka.workbooks.inspector' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/interactive/XamarinInteractive-' + $version + '.msi' 
$checksum32 = '3C0C84A69627EE3C71D716F5012ED9453591F91617EE8B15B0953EC3E8E84F4A' 
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
