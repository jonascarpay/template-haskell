## Template for Haskell + Nix projects.

Uses IOHK's [`haskell.nix`](https://github.com/input-output-hk/haskell.nix) for setting up an environment containing `ghc`, `cabal`, `hoogle`, `ormolu`, and `haskell-language-server`.

### Usage

Clone/copy this repo to the intended package location, `cd` into it, and run `./wizard.sh`.

Make sure you properly set up the [IOHK cache](https://input-output-hk.github.io/haskell.nix/tutorials/getting-started/#setting-up-the-binary-cache).

### CI

CI consists of a Stack matrix, Cabal matrix, and Nix build.

The Nix build uses [my own public Cachix](https://app.cachix.org/cache/jmc) for caching.
When starting out this is nice because it saves you from building GHC, but if you care a lot about the Nix build you will eventually want to switch this to something you have push access to.
