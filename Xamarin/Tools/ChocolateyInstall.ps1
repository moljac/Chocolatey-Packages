$packageName = 'xamarin' 
$installerType = 'exe' 
$url = 'http://download.xamarin.com/Installer/Windows/XamarinInstaller.exe' 
$checksum = 'EE6495607A42AA0E2676F9CA24149565E81BAE73F05C4567047ED23741798231' 
$checksumtype = 'sha256' 
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.log" 
$validExitCodes = @(0, 3010)
 
Install-ChocolateyPackage `
    $packageName `
    $installerType `
	--not-silent `
    $silentArgs `
    -Url      $url `
    -Checksum       $checksum `
    -ChecksumType   $checksumtype `
	-validExitCodes $validExitCodes
