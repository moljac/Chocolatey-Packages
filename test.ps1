
cd $PSScriptRoot

choco uninstall -y `
    xamarin
choco install -y `
    xamarin `
    -source .\Xamarin\xamarin.4.0.nupkg

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
    -source .\Xamarin-Studio\xamarin-studio.6.1.0.5441.nupkg
    
choco uninstall -y `
    xamarin-visualstudio
choco install -y `
    xamarin-visualstudio `
    -source .\Xamarin-VisualStudio\xamarin-visualstudio.4.2.0.680.nupkg


choco uninstall -y `
    xamarin-android-player 
choco install -y `
    xamarin-android-player `
    -source .\products-additional\Xamarin-Android-Player\xamarin-android-player.0.6.5.nupkg


choco uninstall -y `
    xamarin-interactive-aka-workbooks-inspector 
choco install -y `
    xamarin-interactive-aka-workbooks-inspector `
    -source .\products-additional\Xamarin-Interactive-Workbooks-Inspector\xamarin-interactive-aka-workbooks-inspector.0.10.0.0.nupkg
    

choco uninstall -y `
    xamarin-ios-simulator
choco install -y `
    xamarin-ios-simulator `
    -source .\products-additional\Xamarin-iOS-Simulator\xamarin-ios-simulator.0.10.0.5.nupkg
    

choco uninstall -y `
    xamarin-profiler
choco install -y `
    xamarin-profiler `
    -source .\products-additional\Xamarin-Profiler\xamarin-profiler.0.34.1.nupkg
        
choco uninstall -y `
    xamarin-test-recorder
choco install -y `
    xamarin-test-recorder `
    -source .\products-additional\Xamarin-TestRecorder\xamarin-test-recorder.0.4.2.nupkg
    
    
    
PAUSE