# NAME

Template for Haskell + Nix projects.

Uses [`haskell.nix`](https://github.com/input-output-hk/haskell.nix) to get `ghc` and compliant

  - `ormolu`
  - `ghcide`
  - `hlint`

`./wizard.sh` will

  1. prompt you for a name
  2. replace all occurrences of `NAME` with it
  4. delete itself
  3. reinitialize the git history

[Homepage](https://github.com/jonascarpay/template-haskell)
