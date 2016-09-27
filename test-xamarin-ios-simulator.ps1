
cd $PSScriptRoot

choco uninstall -y `
    xamarin-ios-simulator
choco install -y `
    xamarin-ios-simulator `
    -source .\products-additional\Xamarin-iOS-Simulator\xamarin-ios-simulator.0.10.0.5.nupkg
    
    
PAUSE