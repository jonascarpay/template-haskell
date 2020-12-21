let
  # 2020-12-21
  haskellNixSrc = builtins.fetchTarball {
    url =
      "https://github.com/input-output-hk/haskell.nix/archive/67ab92fc6d76a9ef12f49f83dd1f19665d5445d7.tar.gz";
    sha256 = "0985zdsx434ykaj44ynnd73qsjl18l68172qgnwb7j1q82wgldsw";
  };
  haskellNix = import haskellNixSrc { };
  pkgsSrc = haskellNix.sources.nixpkgs-2003;
  pkgsArgs = haskellNix.nixpkgsArgs;
  pkgs = import pkgsSrc pkgsArgs;
in
pkgs.haskell-nix.project {
  src = pkgs.haskell-nix.haskellLib.cleanGit { src = ./.; };
  compiler-nix-name = "ghc8102";
}
