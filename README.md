![master-travis](https://travis-ci.org/ericsebesta/spaceshooter-undertest.svg)

#SpaceShooter Tutorial - Under Test 
#(THIS IS A WORK IN PROGRESS)

![header image](http://unity3d.com/sites/default/files/space-shooter-header_0.jpg)

The Unity SpaceShooter [tutorial](http://unity3d.com/learn/tutorials/projects/space-shooter) - updated to support unit and integration testing.

I did this both as a learning example for other people to see unit testing in a practical setting using Unity - and selfishly as a project in order to explore Unity's testing capabilities.

I'm also using build scripts to automatically build the project using Travis-CI. My scripts are based on those found [here](https://jonathan.porta.codes/2015/04/17/automatically-build-your-unity3d-project-in-the-cloud-using-travisci-for-free/). Another project on GitHub is working down a similar path, consult it [here](https://github.com/MrSimbax/pong-x).

Current TODO list:

1. Save local spaceshooter build, which has some integration tests
2. Local build doesn't export (something about missing NUnit file?), resolve it
3. Fix issues with original project (collision doesn't kill player, no GUI)
4. Confirm that Travis-CI can actually build the targets
5. Improve Travis-CI script to only succeed if build succeeds
6. Add 1 unit test, get Travis-CI to run and only succeed if test passes
7. Move integration tests over from other project
8. Generalize travis-CI unity build scripts for reuse
9. Add many more unit and integration tests
