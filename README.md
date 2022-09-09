# Info and Rules

1. Repository is created only for building vade-evan. The built static library is stored as job artifacts of the pipeline.
2. Two types of jobs exist in the pipeline. `build-nightly` and `build`. 
3. `build-nightly` saves static libraries that expire every night
4. `build` saves static libraries that expire in 15 minutes. Furthermore, this job has to be executed MANUALLY.
5. IMPORTANT: If you are playing around with this repository make sure the repository builds are stable before EOD. If you cannot assure stability just revert your commits before EOD. This is because a nightly build will automatically published and we don't want your mess in the production.
6. If you want to tweak around with this repository and test the tweaked static libraries, use the artifacts of the `build` job
7. If you are wanting to just use the static libraries and not tweak around with this repository, then use the artifacts from the `build-nightly` job
8. Static links to artifacts for the LATEST SUCCESSFUL `build` and `build-nightly` jobs are pasted below.

`build` artifacts: (https://git.slock.it/in3/vade-libraries/-/jobs/artifacts/master/raw/libvade_evan.a?job=build)[https://git.slock.it/in3/vade-libraries/-/jobs/artifacts/master/raw/libvade_evan.a?job=build]

`build-nightly` artifacts: (https://git.slock.it/in3/vade-libraries/-/jobs/artifacts/master/raw/libvade_evan.a?job=build-nightly)[https://git.slock.it/in3/vade-libraries/-/jobs/artifacts/master/raw/libvade_evan.a?job=build-nightly]