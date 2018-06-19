param
(
  [string]$push = "N"
)

$ErrorActionPreference = "Stop"

chocolatey update chocolatey

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


cd .\products-additional\microsoft-build-tools-2013\
cpack microsoft-build-tools-2013.nuspec
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


cd .\products-additional\Xamarin-Android-Player\
cpack Xamarin-Android-Player.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xvs.Name
}
cd ..\..\


cd .\products-additional\Xamarin-Android-Player-32b\
cpack Xamarin-Android-Player-32b.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xvs.Name
}
cd ..\..\


cd .\products-additional\Xamarin-Android-Player-64b\
cpack Xamarin-Android-Player-64b.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xvs.Name
}
cd ..\..\

cd .\products-additional\Azure.Machine.Learning.Workbench\
cpack Azure.Machine.Learning.Workbench.nuspec
$xvs = Dir | Sort CreationTime -Descending | Select Name -First 1 

if($push -eq "Y" -or $push -eq "y"){
  cpush $xvs.Name
}
cd ..\..\

#PAUSE