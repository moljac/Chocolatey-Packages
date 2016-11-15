$ErrorActionPreference = "Stop"

cd $PSScriptRoot
        
choco uninstall -y `
    xamarin-visualstudio
choco install -y `
    xamarin-visualstudio `
    -source .\Xamarin-VisualStudio\xamarin-visualstudio.4.2.0.695.nupkg


#$ErrorActionPreference = "Stop"

#cd $PSScriptRoot
    
#choco uninstall -y `
#    xamarin-visualstudio

# choco install -fdv ..\..\Xamarin-VisualStudio\Xamarin-VisualStudio.nuspec

#cd ..\..\Xamarin-VisualStudio\
#choco pack  Xamarin-VisualStudio.nuspec


#choco pack
#choco install -fdv `
#    .\Xamarin-VisualStudio.nuspec

#choco install -y `
#    xamarin-visualstudio `
#    -source "'.;https://chocolately.org/api/v2/'"


#cd ..\test-scripts\local-filesystem\
    

#PAUSE