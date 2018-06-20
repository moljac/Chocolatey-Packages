$version = '1.4.1'

$packageName = 'xamarin.interactive.aka.workbooks.inspector' 
$installerType = 'msi' 
# https://dl.xamarin.com/interactive/XamarinInteractive-1.4.1.msi
$url = 'https://dl.xamarin.com/interactive/XamarinInteractive-' + $version + '.msi' 
$checksum32 = '' 
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
