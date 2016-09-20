$version = '0.34.1'

$packageName = 'xamarin.profiler' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/profiler/profiler-windows.msi' 
$checksum32 = '2C89D6044F7BF98847FDE0B34F881A0889FAE23D7BFDFCB5F9436023600C4106' 
$checksumtype32 = 'sha256'
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.profiler.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage `
    $packageName `
    $installerType `
    $silentArgs `
    $url `
    -Checksum       $checksum32 `
    -ChecksumType   $checksumtype32 `
    -validExitCodes $validExitCodes
