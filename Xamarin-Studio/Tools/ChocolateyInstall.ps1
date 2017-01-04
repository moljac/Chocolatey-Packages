$version = '6.1.3.19'

$packageName = 'xamarin.studio' 
$installerType = 'msi' 
$url = 'http://dl.xamarin.com/MonoDevelop/Windows/XamarinStudio-' + $version + '.msi'
$checksum = '310D43A8443CC9AE9DB8AF7B25C657472544EFF651D45256FD1B15FF06E15A5A' 
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

