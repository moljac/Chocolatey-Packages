$version = '6.1.3.19'

$packageName = 'xamarin.studio' 
$installerType = 'msi' 
$url = 'http://dl.xamarin.com/MonoDevelop/Windows/XamarinStudio-' + $version + '.msi'
$checksum = '5BCD048BD4139E0E597A467B5045EEE38EF53B338548F55B4674069979D2A101'

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

