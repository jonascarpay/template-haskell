let
  haskellNix =
    let
      # 2020-12-21
      commit = "9047c0f449b208d416c459888f50d98ea6c7cc0e";
      sha256 = "0lk23n77w9vq2kmd4accql9wsg3i0afzjpxmh5qnx7g1hpxsbmzs";
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
      compiler-nix-name = "ghc8102";
    };
  };
in
import pkgsSrc (pkgsArgs // {
  overlays = pkgsArgs.overlays ++ [ overlay ];
})
