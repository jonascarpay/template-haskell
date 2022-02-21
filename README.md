## Template for Haskell + Nix projects.

Uses IOHK's [`haskell.nix`](https://github.com/input-output-hk/haskell.nix) for setting up an environment containing `ghc`, `cabal`, `hoogle`, `ormolu`, and `haskell-language-server`.

### Usage

Clone/copy this repo to the intended package location, and run the wizard.
```bash
git clone https://github.com/jonascarpay/template-haskell <my-project>
cd <my-project>
./wizard.sh
```

See [the accompanying blog post](https://jonascarpay.com/posts/2021-01-28-haskell-project-template.html) for more information.

### Flakes

Since both I and all users I've talked to never use the non-flakes version anymore, I have decided to drop support for it.
So, **`template-haskell` is now flakes-only**.
If you disagree with this decision, and are prepared to maintain a non-flakes version, please open an issue and we'll work something out.

### CI

CI consists of a Stack matrix, Cabal matrix, and Nix build.
To disable, remove the `.github` directory.

The Nix build uses [my own public Cachix](https://app.cachix.org/cache/jmc) for caching.
When starting out this is nice because it saves you from building GHC, but if you care a lot about the Nix build you will eventually want to switch this to something you have push access to.
