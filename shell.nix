{ sources ? import ./nix/sources.nix }:

with import sources.nixpkgs {};

mkShell {
  name = "pa164-ml-and-nlp-env";
  buildInputs = [
    python38
    nodejs-12_x
    glibcLocales
  ];
  shellHook = ''
  # set SOURCE_DATE_EPOCH so that we can use python wheels
  export SOURCE_DATE_EPOCH=315532800
  export LD_LIBRARY_PATH=${stdenv.lib.makeLibraryPath [stdenv.cc.cc]}
  '';
  preferLocalBuild = true;
}
