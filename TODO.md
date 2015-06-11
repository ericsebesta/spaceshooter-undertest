
Current TODO list:

1. get Travis-CI to succeed if only if app builds and all tests pass
2. De-"Done-ify" more assets in the project (specifically the main scene, so i can add a test scene next to it)
3. Move integration tests over from other project, get Travis-CI to run and only succeed if integration test passes
4. Generalize travis-CI build scripts for reuse
5. Add many more unit and integration tests
5. Make travis only build if something changes that "matters" (i.e. definitely don't build if only .md changes)
6. Make travis only zip files if we want to deploy it
6. Fix issues with original project (collision doesn't kill player)

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
