#! /bin/sh

project="SpaceShooter-undertest"

echo '=========================================================================='
echo "Attempting to build $project for Windows"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -projectPath "$(pwd)" \
  -buildWindowsPlayer "$(pwd)/Build/$project-win/$project.exe" \
  -quit
resultcode = $?
echo 'Logs from Windows build'
cat $(pwd)/unity.log
echo resultcode
if [ "$resultcode" -eq 0 ]; then
  exit "$resultcode"; # exit for non-zero return code
fi

echo '=========================================================================='
echo "Attempting to build $project for OS X"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -projectPath "$(pwd)" \
  -buildOSXUniversalPlayer "$(pwd)/Build/$project-osx/$project.app" \
  -quit
resultcode = $?
echo 'Logs from OS X build'
cat $(pwd)/unity.log
if [ "$resultcode" -eq 0 ]; then
  exit "$resultcode"; # exit for non-zero return code
fi

echo '=========================================================================='
echo "Attempting to build $project for Linux"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -projectPath "$(pwd)" \
  -buildLinuxUniversalPlayer "$(pwd)/Build/$project-lin/$project" \
  -quit

resultcode = $?
echo 'Logs from Linux build'
cat $(pwd)/unity.log
if [ "$resultcode" -eq 0 ]; then
  exit "$resultcode"; # exit for non-zero return code
fi

echo '=========================================================================='
echo 'Packing the build files to zip files'
echo 'Generating README and VERSION files...'
cp README.md Build/$project-win/README.md
cp README.md Build/$project-lin/README.md
cp README.md Build/$project-osx/README.md
git describe --long > Build/$project-win/VERSION.txt
git describe --long > Build/$project-lin/VERSION.txt
git describe --long > Build/$project-osx/VERSION.txt

cd Build

echo 'Removing debug files...'
rm ./$project-win/*.pdb

echo '=========================================================================='
echo 'Packing Windows build...'
zip -r $project-win.zip ./$project-win
echo 'Packing Linux build...'
zip -r $project-lin.zip ./$project-lin
echo 'Packing OS X build...'
zip -r $project-osx.zip ./$project-osx

cd ..
echo 'Zip files should be ready to deploy.'
