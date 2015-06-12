#! /bin/sh

echo 'Running unit tests'
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -projectPath "$(pwd)" \
  -executeMethod UnityTest.Batch.RunUnitTests \
  -quit
rc=$?
echo 'Logs from unit tests'
cat $(pwd)/unity.log
cat $(pwd)/UnitTestResults.xml
if [[ $rc != 0 ]]; then exit $rc; fi
