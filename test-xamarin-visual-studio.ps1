
cd $PSScriptRoot
    
choco uninstall -y `
    xamarin-visualstudio
choco install -y `
    xamarin-visualstudio `
    -source .\Xamarin-VisualStudio\xamarin-visualstudio.4.2.0.695.nupkg

    
PAUSE