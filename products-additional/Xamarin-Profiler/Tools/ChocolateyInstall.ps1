$version = '1.0.4-18'

$packageName = 'xamarin.profiler' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/profiler/XamarinProfiler.Windows.Installer.'  + $version + '.msi' 
$checksum32 = 'CE0A1971E902B52137B041B4617139CBE5BE03E41053370271D57A570AADC5E9' 

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
