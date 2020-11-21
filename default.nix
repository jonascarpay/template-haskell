let
  haskellNixSrc = builtins.fetchTarball {
    url =
      "https://github.com/input-output-hk/haskell.nix/archive/01003480bdee1717b95ca99049d283168b405925.tar.gz";
    sha256 = "06j381kix405k3x8yqlccwqckjrc3qrdqchbbd80cd6slf6ybg9c";
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
