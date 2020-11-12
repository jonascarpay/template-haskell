# PKGNAME

Template for Haskell + Nix projects.

Uses [`haskell.nix`](https://github.com/input-output-hk/haskell.nix) to get `ghc` and compliant

  - `ormolu`
  - `ghcide`
  - `hlint`

`./wizard.sh` will

  1. prompt you for a package name, author name, email
  2. replace all occurrences of `PKGNAME`, `AUTHNAME`, `EMAIL` with it, and `CURRENTYEAR` with the current year
  4. delete `wizard.sh`
  3. reinitialize the git history

[Homepage](https://github.com/jonascarpay/template-haskell)
