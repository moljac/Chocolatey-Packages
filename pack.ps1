param(
  [string]$push = "N"
)

cd $PSScriptRoot

cd Xamarin-Studio
cpack Xamarin-Studio.nuspec
$xs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xs.Name
}

cd ..\Xamarin-VisualStudio
cpack Xamarin-VisualStudio.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xvs.Name
}
PAUSE