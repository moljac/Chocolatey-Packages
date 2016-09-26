$version = '4.2.0.695'

$packageName = 'xamarin.visualstudio' 
$installerType = 'msi' 
$url = 'http://download.xamarin.com/XamarinforVisualStudio/Windows/Xamarin.VisualStudio_' + $version + '.msi'
$checksum = 'E24F714A8DCCE5E1477D67293B450153BF1501215FE1DE0C356AFFB48B01F4F0' 
$checksumtype = 'sha256' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage `
    $packageName `
    $installerType `
    $silentArgs `
    -Url      $url `
    -Checksum       $checksum `
    -ChecksumType   $checksumtype `
	-validExitCodes $validExitCodes
