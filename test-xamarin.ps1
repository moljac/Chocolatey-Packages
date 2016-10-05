$ErrorActionPreference = "Stop"

cd $PSScriptRoot

choco uninstall -y `
    xamarin-ios-simulator `
	xamarin-profiler `
	xamarin-interactive-aka-workbooks-inspector `
	
	
choco uninstall -y `
    xamarin

choco install -y `
    xamarin `
    -source .\Xamarin\xamarin.4.0.nupkg
    
    
# PAUSE