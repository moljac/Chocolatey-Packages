$version = '0.4.2'

$packageName = 'xamarin.testrecorder.vs2015' 
$installerType = 'vsix' 
$url = 'https://marketplace.visualstudio.com/items?itemName=XamarinInc.XamarinTestRecorder2015'
$checksum32 = 'D1210E0DDB21DAB72A49A14F78D95943F15F4A3AB0C26F072E9E3C4EEE01827C' 
$checksumtype32 = 'sha256'
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.testrecorder.vs2015.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyVsixPackage `
	-PackageName $packageName `
	-VsixUrl $url `
	-VsVersion 14 `
	-validExitCodes $validExitCodes