master: [![Build Status](https://travis-ci.org/ericsebesta/spaceshooter-undertest.svg?branch=master)](https://travis-ci.org/ericsebesta/spaceshooter-undertest)

#SpaceShooter Tutorial - Under Test 
#(THIS IS A WORK IN PROGRESS)

![header image](http://unity3d.com/sites/default/files/space-shooter-header_0.jpg)

The Unity SpaceShooter [tutorial](http://unity3d.com/learn/tutorials/projects/space-shooter) - updated to support unit and integration testing.

I did this both as a learning example for other people to see unit testing in a practical setting using Unity - and selfishly as a project in order to explore Unity's testing capabilities.

This was developed using Unity 5.0.2 and UnityTestTools 1.5.2 (freely available on the Unity Asset Store).

I'm also using build scripts to automatically build the project using Travis-CI. My scripts are based on those found [here](https://jonathan.porta.codes/2015/04/17/automatically-build-your-unity3d-project-in-the-cloud-using-travisci-for-free/). Another project on GitHub is working down a similar path, consult it [here](https://github.com/MrSimbax/pong-x).

#What does this project do?
The goal of this project is to serve as an example of how one can set up git/github/unity/travis-ci to create a good unit-test-centric Unity-based game development process. Only free tools are needed, and while there are some hiccups that might cause newer programmers to stumble, I'm hoping that by making this project visible more people will embrace a test-based development environment. Unity has done a great job integrating industry-standard, modern C# testing tools, and they are well-worth embracing.

#How can i test/build this project?

1. Install Unity 5.0.2 (windows or mac should be fine).
2. Download this project from github (many other websites can help you with that).
3. The UnityTestTools are available in-editor under the UnityTestTools menu bar.
4. The build scripts also show how to execute unit tests from a command-line for automated building and validation.

#Where can I find out more about UnityTestTools?

- [Asset Store download link](https://www.assetstore.unity3d.com/en/#!/content/13802)
- [Source on BitBucket](https://bitbucket.org/Unity-Technologies/unitytesttools/)
- [Unity Video Tutorial](https://unity3d.com/learn/tutorials/modules/beginner/live-training-archive/test-tools)
- [Stickied Support Thread on Unity forums](http://forum.unity3d.com/threads/unity-test-tools.218287/)
- [Blog posts by Dmitri Mindra, a Unity test engineer](http://blogs.unity3d.com/author/dmitriy/)
- [Blog posts by Tomek Paszek, a Unity test engineer](http://blogs.unity3d.com/author/tomek/)
