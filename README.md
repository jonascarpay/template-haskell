## Template for Haskell + Nix projects.

Uses IOHK's [`haskell.nix`](https://github.com/input-output-hk/haskell.nix) for setting up an environment containing `ghc`, `cabal`, `hoogle`, `ormolu`, and `haskell-language-server`.

To use, clone/copy this repo to the intended package location, `cd` into it, and run `./wizard.sh`.

Make sure you properly set up the [IOHK cache](https://input-output-hk.github.io/haskell.nix/tutorials/getting-started/#setting-up-the-binary-cache).
