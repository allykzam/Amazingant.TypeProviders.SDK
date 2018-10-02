Amazingant.TypeProviders.SDK
============================

This repository exists solely as a place to collect patches for the
`FSharp.TypeProviders.SDK` repository. The most recent type provider I've been
maintaining at work contains changes to the `ProvidedTypes.fs` and
`ProvidedTypes.fsi` files contained in the official type provider SDK, which I
want to maintain in a way that makes it easier to update. This repository solves
that.

To use this repository, make sure that the `SDK` submodule is up-to-date and
checked out to the appropriate commit (git will tell you if it isn't), and then
run `apply-patches.sh`. This should be done on a linux or macOS box; if you're
on Windows 10+, either do this on another system, or turn on WSL and install
e.g. Ubuntu.

To create a new patch, work within the `SDK` submodule, and send the output of
`git diff` into a new `*.patch` file. After this is done, you should run
`dos2unix` on the new patch file, otherwise the patch will not be applied when
`apply-patches.sh` is used.
