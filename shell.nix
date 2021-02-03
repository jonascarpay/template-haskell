# To have ormolu automatically format imports using the ImportQualifiedPost syntax,
# comment out `ormolu` from the `tools` section, and uncomment `buildInputs`
let
  pkgs = import ./pkgs.nix;
  hsPkgs = pkgs.hsPkgs;
  ormolu-wrapped =
    let ormolu = pkgs.haskell-nix.tool hsPkgs.projectArgs.compiler-nix-name "ormolu" "latest";
    in
    pkgs.writeShellScriptBin "ormolu" ''
      ${ormolu}/bin/ormolu --ghc-opt=-XImportQualifiedPost $@
    '';
in
hsPkgs.shellFor {
  withHoogle = true;
  tools = {
    cabal = "latest";
    ghcid = "latest";
    haskell-language-server = "latest";
    ormolu = "latest";
  };
  # buildInputs = [ ormolu-wrapped ];
  exactDeps = true;
}
