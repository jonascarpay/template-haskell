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

Don't worry if you have not used flakes before, the practical implications of this change are minimal.
After [enabling flakes support](https://nixos.wiki/wiki/Flakes#Installing_flakes), just use `nix build` and `nix develop` instead of `nix-build` and `nix-shell`, respectively.

### CI

Default CI consists of a Stack matrix, Cabal matrix, and Nix build.
Don't forget to look at `.github/workflows/CI.yaml` and tweak this to your project.
