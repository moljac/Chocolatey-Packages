
cd $PSScriptRoot

choco uninstall -y `
    xamarin-android-player 
choco install -y `
    xamarin-android-player `
    -source .\products-additional\Xamarin-Android-Player\xamarin-android-player.0.6.5.nupkg
    
    
PAUSE