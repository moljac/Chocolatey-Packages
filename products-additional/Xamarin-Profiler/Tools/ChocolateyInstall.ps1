$version = '0.38.0-0'

$packageName = 'xamarin.profiler' 
$installerType = 'msi' 
$url = 'https://dl.xamarin.com/profiler/XamarinProfiler.Windows.Installer.'  + $version + '.msi' 
$checksum32 = '6E62B335622B60A8BD0F4F074F5617669BA18E9F7C59A403E855DC8EFBDE1848' 

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
