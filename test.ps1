
cd $PSScriptRoot

choco uninstall -y `
	xamarin-android-player `
	-source .\products-additional\Xamarin-Android-Player\xamarin-android-player.0.6.5.nupkg

choco install -y `
	xamarin-interactive-aka-workbooks-inspector `
	-source .\products-additional\Xamarin-Interactive-Workbooks-Inspector\xamarin-interactive-aka-workbooks-inspector.0.10.0.0.nupkg
	
choco install -y `
	xamarin-ios-simulator `
	-source .\products-additional\Xamarin-iOS-Simulator\xamarin-ios-simulator.0.10.0.5.nupkg
	
choco install -y `
	xamarin-profiler `
	-source .\products-additional\Xamarin-Profiler\xamarin-profiler.0.34.1.nupkg
		
choco install -y `
	xamarin-test-recorder `
	-source .\products-additional\Xamarin-TestRecorder\xamarin-test-recorder.0.4.2.nupkg
	
choco uninstall -y `
	xamarin `
choco install -y `
	xamarin `
	-source .\Xamarin\xamarin.4.0.nupkg
	
	
PAUSE