REM This script must be run from the base unity project directory.
REM It presumes a default-install location for unity.
REM Rather than passing in scene names, depend on default (all scenes that start with Test[s])

echo Running integration tests
"c:\Program Files\Unity\Editor\Unity.exe" ^
  -batchmode ^
  -nographics ^
  -silent-crashes ^
  -logFile $(pwd)/unity.log ^
  -projectPath %cd% ^
  -executeMethod UnityTest.Batch.RunIntegrationTests ^
  -resultsFileDirectory=%cd% ^
  -quit
