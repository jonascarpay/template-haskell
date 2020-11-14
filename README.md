## Template for Haskell + Nix projects.

Uses [`haskell.nix`](https://github.com/input-output-hk/haskell.nix) to get `ghc` and compliant `ormolu`, `ghcide`, and `hlint`.

`./wizard.sh` will

  1. prompt you for a package name, author name, email
  2. replace all occurrences of `PKGNAME`, `AUTHNAME`, `EMAIL`, and  `CURRENTYEAR`
  3. create a simple `README.md`
  4. delete `wizard.sh`
  5. reinitialize the git history
