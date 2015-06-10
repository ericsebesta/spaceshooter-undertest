
Current TODO list:

1. get Travis-CI to succeed if only if app builds and all tests pass
2. De-"Done-ify" more assets in the project (specifically the main scene, so i can add a test scene next to it)
3. Move integration tests over from other project, get Travis-CI to run and only succeed if integration test passes
4. Generalize travis-CI build scripts for reuse
5. Add many more unit and integration tests
6. Fix issues with original project (collision doesn't kill player)

Errors that I encountered and dealt with:
- typo in 1.5.2 test tools
  - fix [here](https://github.com/ericsebesta/spaceshooter-undertest/commit/c47ed92ce20fe7cbb8f8840fee1a7cbce1120f78)
- "using" for NUnit and Substitute
  - example [here](https://github.com/ericsebesta/spaceshooter-undertest/commit/a93beea208cd7c170550ce061c8499d86a409987/Assets/Scripts/Editor/Test/DestroyByContactTest.cs)
- had to put tests under "Editor"
- build failed for some reason, but "play mode worked"
