
cd $PSScriptRoot

choco uninstall -y `
    xamarin
choco install -y `
    xamarin `
    -source .\Xamarin\xamarin.4.0.nupkg
    
    
PAUSE