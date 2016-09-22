$version = '6.1.0.5441-0'

$packageName = 'xamarin.studio' 
$installerType = 'msi' 
$url = 'http://download.xamarin.com/studio/Windows/XamarinStudio-' + $version + '.msi'
$checksum = '76EDF6D89C9A2C4FBBCFC2D3048B40D6F77290C891F32A1BDF0C097F929AEBCB' 
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
