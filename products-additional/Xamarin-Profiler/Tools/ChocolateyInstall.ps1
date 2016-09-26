$version = '0.34.2-6'

$packageName = 'xamarin.profiler' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/profiler/profiler-windows.msi' 
$checksum32 = 'B40D2197443D706187549B5DD5330D61C49050035613B2BAECEAC52956DDFE98' 
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
