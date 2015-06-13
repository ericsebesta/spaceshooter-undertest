#! /bin/sh

#This script must be run from the base unity project directory.
#It presumes a default-install location for unity.
#It will 0 on success, else non-0.
#It outputs a UnitTestResults.xml file in the base unity project directory.

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
