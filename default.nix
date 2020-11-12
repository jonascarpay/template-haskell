let
  haskellNixSrc = builtins.fetchTarball {
    url =
      "https://github.com/input-output-hk/haskell.nix/archive/c583fb3e775d0f071b58a53f82f726cec623c800.tar.gz";
    sha256 = "0pzsaxwap6jmmpcyzwvygbrfcanjzkwfrmlqac4jnjrfixd8g27s";
  };
  haskellNix = import haskellNixSrc { };
  pkgsSrc = haskellNix.sources.nixpkgs-2003;
  pkgsArgs = haskellNix.nixpkgsArgs;
  pkgs = import pkgsSrc pkgsArgs;
in
pkgs.haskell-nix.project {
  src = pkgs.haskell-nix.haskellLib.cleanGit { src = ./.; };
  compiler-nix-name = "ghc883";
}
