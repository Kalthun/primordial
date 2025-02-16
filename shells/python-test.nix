{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  packages = [
    (pkgs.python3.withPackages(p: with p;[
      numpy
      scipy
      matplotlib
      pandas
      jupyter
    ]))
  ];

}
