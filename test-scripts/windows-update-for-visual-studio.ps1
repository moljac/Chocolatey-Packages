
$url = "https://www.microsoft.com/en-us/download/confirmation.aspx?id=42153"
$output = "Windows8.1-KB2919442-x64.msu"

# Invoke-WebRequest -Uri $url

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $output)

choco install kb2919442
