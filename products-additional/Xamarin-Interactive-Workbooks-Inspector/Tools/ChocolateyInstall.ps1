$version = '0.10.0.0'

$packageName = 'xamarin.interctive.aka.workbooks.inspector' 
$installerType = 'msi' 
$url = 'https://download.xamarin.com/inspector/XamarinInteractive-' + $version + '.msi' 
$checksum32 = 'FD9FB9CFECB8380B6EF0E615E729F01BBA30A2C4AB8252B9665C7675AC59CA85' 
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
