let
  pkgs = import ./pkgs.nix;
  hsPkgs = pkgs.hsPkgs;
  ormolu = pkgs.haskell-nix.tool hsPkgs.projectArgs.compiler-nix-name "ormolu" "latest";
  # Warning: only works with ghc 8.10 and up!
  ormolu-wrapped = pkgs.writeShellScriptBin "ormolu" ''
    ${ormolu}/bin/ormolu --ghc-opt=-XImportQualifiedPost $@
  '';
in
hsPkgs.shellFor {
  withHoogle = true;
  tools = {
    cabal = "latest";
    ghcid = "latest";
    haskell-language-server = "latest";
  };
  buildInputs = [ ormolu-wrapped ];
  exactDeps = true;
}
