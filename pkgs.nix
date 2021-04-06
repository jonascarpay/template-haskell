let
  haskellNix =
    let
      # 2020-12-21
      commit = "11ac089c9ad436defc77fd096e00bebc42adda1d";
      sha256 = "1mwkpg1cspv94k9wz02g99lq5yk6c1mhd4jpl0ap62n2kajz4jff";
    in
    import
      (builtins.fetchTarball {
        url = "https://github.com/input-output-hk/haskell.nix/archive/${commit}.tar.gz";
        inherit sha256;
      })
      { };
  pkgsSrc = haskellNix.sources.nixpkgs-2009;
  pkgsArgs = haskellNix.nixpkgsArgs;
  overlay = self: _: {
    hsPkgs = self.haskell-nix.project {
      src = self.haskell-nix.haskellLib.cleanGit {
        src = ./.;
        name = "PKGNAME";
      };
      compiler-nix-name = "ghc901";
    };
  };
in
import pkgsSrc (pkgsArgs // {
  overlays = pkgsArgs.overlays ++ [ overlay ];
})
