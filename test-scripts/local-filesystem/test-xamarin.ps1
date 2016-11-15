$ErrorActionPreference = "Stop"

cd $PSScriptRoot

choco uninstall -y `
    xamarin-ios-simulator `
	xamarin-profiler `
	xamarin-interactive-aka-workbooks-inspector `
	
	
choco uninstall -y `
	autohotkey.portable `
    xamarin

choco install -y `
	autohotkey.portable
	
choco install -y `
    xamarin `
    -source .\Xamarin\xamarin.4.0.nupkg
    
    
# PAUSE