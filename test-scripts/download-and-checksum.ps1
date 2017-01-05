
# $url = ""
# $url = "http://download.xamarin.com/Installer/Windows/XamarinInstaller.exe"
# $url = "https://dl.xamarin.com/MonoDevelop/Windows/XamarinStudio-6.1.3.19.msi"
# $url = "https://dl.xamarin.com/XamarinforVisualStudio/Windows/Xamarin.VisualStudio_4.2.2.6.msi"
# $url = "https://dl.xamarin.com/interactive/XamarinInteractive-1.0.0.0.msi"
# $url = "https://dl.xamarin.com/xamarin-simulator/Xamarin.Simulator.Installer.1.0.0.13.msi"
# $url = "https://dl.xamarin.com/profiler/XamarinProfiler.Windows.Installer.1.0.4-18.msi"
# $url = "https://marketplace.visualstudio.com/items?itemName=XamarinInc.XamarinTestRecorder2015"
# $url = "https://aka.ms/vs/15/release/vs_Community.exe"
# $url = "https://aka.ms/vs/15/release/vs_Professional.exe"
 $url = "https://aka.ms/vs/15/release/vs_Enterprise.exe"

# $output = ""
# $output = "XamarinInstaller.exe"
# $output = "XamarinStudio-6.1.3.19.msi"
# $output = "Xamarin.VisualStudio_4.2.2.6.msi"
# $output = "XamarinInteractive-1.0.0.0.msi"
# $output = "Xamarin.Simulator.Installer.1.0.0.13.msi"
# $output = "XamarinProfiler.Windows.Installer.1.0.4-18.msi"
# $output = "Xamarin.TestRecorder.VSIX.2015.vsix"
# $output = "vs_Community.exe" 
#			5186D49CB63F95F8B588024A698E2FEFEE5D245EA40AFAC9B2FD18836BBB82C6
# $output = "vs_Professional.exe"
#			8F61FC509F9D9D3A3C6FADB90AD2159E2330A22B4489E04860018873B904F598
 $output = "vs_Enterprise.exe"
#			CAF4ADC5330C63A8D50EBA41EBE4C2325DEAE8A9DAEF6FE7B18CCE8908A164AD


# Invoke-WebRequest -Uri $url

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $output)

checksum --type sha256 $output

If ($?)
{
	Write-Host "Press any key to continue ..."
	$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}
Else
{
	Write-Host "Press any key to continue ..."
	$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}
