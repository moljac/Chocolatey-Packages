$ErrorActionPreference = "Stop"

cd $PSScriptRoot
        
choco uninstall -y `
    xamarin-test-recorder
choco install -y `
    xamarin-test-recorder `
    -source .\products-additional\Xamarin-TestRecorder\xamarin-test-recorder.0.4.2.nupkg
    
    
    
#PAUSE