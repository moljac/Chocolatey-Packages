$version = '4.2.1.52'

choco install -y KB2919442
choco install -y KB2919355

$packageName = 'xamarin.visualstudio' 
$installerType = 'msi' 
$url = 'http://dl.xamarin.com/XamarinforVisualStudio/Windows/Xamarin.VisualStudio_' + $version + '.msi'
$checksum = 'BB005BCA59C3ED5B5877AE75B2915E88DFFCB6D18AB84D0102E7C1115494F715' 
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
