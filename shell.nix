{ pkgs ? import <nixpkgs> { } }:

let
  dependencies = with pkgs; [
      openjdk16-bootstrap
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
