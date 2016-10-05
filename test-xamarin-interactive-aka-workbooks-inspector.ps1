$ErrorActionPreference = "Stop"

cd $PSScriptRoot

choco uninstall -y `
    xamarin-interactive-aka-workbooks-inspector 
choco install -y `
    xamarin-interactive-aka-workbooks-inspector `
    -source .\products-additional\Xamarin-Interactive-Workbooks-Inspector\xamarin-interactive-aka-workbooks-inspector.0.10.0.0.nupkg
    
    
#PAUSE