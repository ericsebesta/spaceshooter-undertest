#! /bin/sh
 
# Example install script for Unity3D project. See the entire example: https://github.com/JonathanPorta/ci-build
 
echo 'Downloading from http://netstorage.unity3d.com/unity/0b02744d4013/MacEditorInstaller/Unity-5.0.2f1.pkg'
curl -O http://netstorage.unity3d.com/unity/0b02744d4013/MacEditorInstaller/Unity-5.0.2f1.pkg
 
echo 'Installing Unity-5.0.2f1.pkg'
sudo installer -dumplog -package Unity-5.0.2f1.pkg -target /
