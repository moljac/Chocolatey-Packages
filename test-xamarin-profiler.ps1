
cd $PSScriptRoot

choco uninstall -y `
    xamarin-profiler
choco install -y `
    xamarin-profiler `
    -source .\products-additional\Xamarin-Profiler\xamarin-profiler.0.34.1.nupkg
    
    
    
PAUSE