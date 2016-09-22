$version = '4.2.0.680'

$packageName = 'xamarin.visualstudio' 
$installerType = 'msi' 
$url = 'http://download.xamarin.com/XamarinforVisualStudio/Windows/Xamarin.VisualStudio_' + $version + '.msi'
$checksum = 'DFB238FFDB943E4C0D66E6AF80A6F608A0BE79E6D120930FC766F7DD0DC57B76' 
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
