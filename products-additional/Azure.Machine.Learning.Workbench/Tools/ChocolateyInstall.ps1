$version = '0.4.2'

$packageName = 'azure-machine=learning-workbench-preview' 
$installerType = 'msi' 
$url = 'https://aka.ms/azureml-wb-msi'
$checksum32 = '' 
$checksumtype32 = 'sha256'
$silentArgs = "/Passive /NoRestart /Log $env:temp\azure-machine=learning-workbench-preview.log" 
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage `
    $packageName `
    $installerType `
    $silentArgs `
    $url `
    -Checksum       $checksum32 `
    -ChecksumType   $checksumtype32 `
    -validExitCodes $validExitCodes