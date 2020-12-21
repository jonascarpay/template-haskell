let
  hsPkgs = import ./.;
  pkgs = import <nixpkgs> { };
  ormolu = hsPkgs.haskell-nix.tool hsPkgs.projectArgs.compiler-nix-name "ormolu" "0.1.4.1";
in
hsPkgs.shellFor {
  withHoogle = true;
  tools = {
    cabal = "3.2.0.0";
    hlint = "3.2.2";
    ghcid = "0.8.7";
    haskell-language-server = "0.6.0";
  };
  buildInputs = [
    (pkgs.writeShellScriptBin "ormolu" ''
      ormolu --ghc-opt=-XImportQualifiedPost $@
    '')
  ];
  exactDeps = true;
}
