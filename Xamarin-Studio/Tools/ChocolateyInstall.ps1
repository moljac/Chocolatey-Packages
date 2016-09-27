$version = '6.1.1.15-0'

$packageName = 'xamarin.studio' 
$installerType = 'msi' 
$url = 'http://download.xamarin.com/studio/Windows/XamarinStudio-' + $version + '.msi'
$checksum = '87C89FCD5AFAE614C41CF2D79E21CB6D6E2EA51C917705100C83DAFA54BD005A' 
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
