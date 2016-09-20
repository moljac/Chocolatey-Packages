param(
  [string]$push = "N"
)

cd $PSScriptRoot

cd Xamarin-Studio
cpack Xamarin-Studio.nuspec
$xs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
#  cpush $xs.Name
}
cd ..\

cd .\Xamarin-VisualStudio
cpack Xamarin-VisualStudio.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
#  cpush $xvs.Name
}
cd ..\

cd .\Xamarin
cpack Xamarin.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
#  cpush $xvs.Name
}
cd ..\

cd .\products-additional\Xamarin-Android-Player\
cpack Xamarin-Android-Player.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xvs.Name
}
cd ..\..\


cd .\products-additional\Xamarin-iOS-Simulator\
cpack Xamarin-iOS-Simulator.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xvs.Name
}
cd ..\..\


cd .\products-additional\Xamarin-Interactive-Workbooks-Inspector\
cpack Xamarin-Interactive-Workbooks-Inspector.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xvs.Name
}
cd ..\..\

cd .\products-additional\Xamarin-Profiler\
cpack Xamarin-Profiler.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xvs.Name
}
cd ..\..\


cd .\products-additional\Xamarin-TestRecorder\
cpack Xamarin-TestRecorder.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xvs.Name
}
cd ..\..\



PAUSE