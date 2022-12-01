{ pkgs ? import <nixpkgs> { } }:

let
  dependencies = with pkgs; [
      sbcl
  ];
in
with pkgs;
mkShell {
  dependencies = dependencies;
  # nativeBuildInputs = [
  #   # pkg-config
  # ];

  buildInputs = [
    dependencies
  ];

}
