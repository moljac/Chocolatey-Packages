$version = '4.2.2.6'

# not allowed 2017-01
# dependency in nuspec! 
# choco install -y KB2919442
# choco install -y KB2919355

$packageName = 'xamarin.visualstudio' 
$installerType = 'msi' 
$url = 'http://dl.xamarin.com/XamarinforVisualStudio/Windows/Xamarin.VisualStudio_' + $version + '.msi'
$checksum = '96F0CDC3B41C45BC2DF8A1EB1A49B17AD83909AC3D87C93D5C2880B90E6A11DC' 

$checksumtype = 'sha256' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin-visualstudio.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage `
    $packageName `
    $installerType `
    $silentArgs `
    -Url      $url `
    -Checksum       $checksum `
    -ChecksumType   $checksumtype `
    -validExitCodes $validExitCodes
