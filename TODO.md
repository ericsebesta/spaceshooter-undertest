
Current TODO list:

1. improve docs to cover getting set up (the troubleshooting below)
2. add some more tests
1. make a mac script to integration tests (scripts-osx/runintegrationtests.sh)
2. Travis-CI runs it and only succeeds if all tests pass
3. De-"Done-ify" more assets in the project (specifically the main scene, so i can add a test scene next to it)
4. Move integration tests over from other project, get Travis-CI to run and only succeed if integration test passes
5. Generalize travis-CI build scripts for reuse
6. Add many more unit and integration tests
7. Make travis only build if something changes that "matters" (i.e. definitely don't build if only .md changes)
8. Make travis only zip files if we want to deploy it
9. Fix issues with original project (collision doesn't kill player)

Lower priority:

- make unit test results easier to find / in an html report that's viewable from github
- investigate another CI system like appveyor (travisci for windows)
- investigate getting code coverage tool integrated (it's tough because unity doesn't use an sln)
   - or can it?

Errors that I encountered and dealt with:
- typo in 1.5.2 test tools
  - fix [here](https://github.com/ericsebesta/spaceshooter-undertest/commit/c47ed92ce20fe7cbb8f8840fee1a7cbce1120f78)
- git default .gitignore can ignore .dll files. 
- "using" for NUnit and Substitute
  - example [here](https://github.com/ericsebesta/spaceshooter-undertest/commit/a93beea208cd7c170550ce061c8499d86a409987/Assets/Scripts/Editor/Test/DestroyByContactTest.cs)
- had to put tests under "Editor"
  - capture what error shows up if you don't

Steps to set up unit testing:

1. Import UnityTestTools from the Asset Store (all but Examples folder, you don't need that data)
2. Make sure dll files get added to version control (if using git)
2. Fix-up issue in 1.5.2 (hopefully fixed in newer build)
3. Create a file under an "Editor" folder
4. Add tests there, run them.
