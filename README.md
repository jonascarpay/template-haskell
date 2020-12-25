## Template for Haskell + Nix projects.

Uses IOHK's [`haskell.nix`](https://github.com/input-output-hk/haskell.nix) to get `cabal`, `ghc`, plus compliant `ormolu` and `haskell-language-server`.

`./wizard.sh` will

  1. prompt you for a package name, author name, email
  2. replace all occurrences of `PKGNAME`, `AUTHNAME`, `EMAIL`, and  `CURRENTYEAR`
  3. create a simple `README.md`
  4. delete `wizard.sh`
  5. reinitialize the git history

Make sure you properly set up the [IOHK cache](https://input-output-hk.github.io/haskell.nix/tutorials/getting-started/#setting-up-the-binary-cache).
