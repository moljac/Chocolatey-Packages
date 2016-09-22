$version = '0.4.2'

$packageName = 'xamarin.testrecorder.vs2015' 
$installerType = 'vsix' 
$url = 'https://visualstudiogallery.msdn.microsoft.com/f9171f80-291e-480c-8003-8bf5c575f2dc/file/221714/5/Xamarin.TestRecorder.VSIX.2015.vsix'
$checksum32 = '17CE46FB82E4EF548C4E0C90141A386B87165F0CCBBA8844EC4CED2D44365335' 
$checksumtype32 = 'sha256'
$silentArgs = "/Passive /NoRestart /Log $env:temp\xamarin.testrecorder.vs2015.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyVsixPackage `
	-PackageName $packageName `
	-VsixUrl $url `
	-VsVersion 14 `
	-validExitCodes $validExitCodes