{ config, pkgs, lib, ... }:

{

  nixpkgs.overlays = [

    (final: prev: {
      zjstatus = zjstatus.packages.${prev.system}.default;
    })
    
  ];
  
}
