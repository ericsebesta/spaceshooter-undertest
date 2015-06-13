REM This script must be run from the base unity project directory.
REM It presumes a default-install location for unity.
REM It will 0 on success, else non-0.
REM It outputs a UnitTestResults.xml file in the base unity project directory.

echo Running unit tests
@echo off
"c:\Program Files\Unity\Editor\Unity.exe" ^
  -batchmode ^
  -nographics ^
  -silent-crashes ^
  -logFile $(pwd)/unity.log ^
  -projectPath %cd% ^
  -executeMethod UnityTest.Batch.RunUnitTests ^
  -quit