
cd $PSScriptRoot


choco uninstall -y `
    xamarin-studio
choco uninstall -y `
    gtksharp 
choco uninstall -y `
    microsoft-build-tools-2013

choco install -y `
    microsoft-build-tools-2013 `
    -source .\products-additional\microsoft-build-tools-2013\microsoft-build-tools-2013.2013.1.nupkg

choco install -y `
    gtksharp 
choco install -y `
    xamarin-studio `
    -source .\Xamarin-Studio\xamarin-studio.6.1.1.15.nupkg
    
    
PAUSE