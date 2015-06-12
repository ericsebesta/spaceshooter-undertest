#! /bin/sh

echo "Running unit tests"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -projectPath "$(pwd)" \
  -batchmode \
  -executeMethod UnityTest.Batch.RunUnitTests \
  -resultFilePath=results.xml \
  -quit

