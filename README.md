## Template for Haskell + Nix projects.

Nix-based Haskell template containing `ghc`, `cabal`, `hoogle`, `ormolu`, and `haskell-language-server`.

### Usage

Clone/copy this repo to the intended package location, and run the wizard.
```bash
git clone https://github.com/jonascarpay/template-haskell <my-project>
cd <my-project>
./wizard.sh
```

You can enter the Nix shell with `nix develop`.
Running `cabal` from inside this shell should use the packages that have been pre-built by Nix.

You can also build your project entirely with nix using `nix build`.

### CI

Default CI consists of a Stack matrix, Cabal matrix, and Nix build.
Don't forget to look at `.github/workflows/CI.yaml` and tweak this to your project.

## Deprecations

### `haskell.nix`

This template previously used IOHK's [haskell.nix](https://github.com/input-output-hk/haskell.nix).
Since I initially released this template [and the accompanying blog post](https://jonascarpay.com/posts/2021-01-28-haskell-project-template.html), the vanilla Nix Haskell infrastructure has become significantly easier to use, and I now recommend it for most users.
I have decided to stop maintaining the `haskell.nix` branch.

### Non-flake interface

Since both I and all users I've talked to never use the non-flakes version anymore, I have decided to drop support for it.
So, **`template-haskell` is now flakes-only**.

Don't worry if you have not used flakes before, the practical implications of this change are minimal.
After [enabling flakes support](https://nixos.wiki/wiki/Flakes#Installing_flakes), just use `nix build` and `nix develop` instead of `nix-build` and `nix-shell`, respectively.
