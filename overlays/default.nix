{ config, pkgs, lib, ... }:

{

  nixpkgs.overlays = [

    (final: prev: {
      zjstatus = prev.zjstatus.packages.${prev.system}.default;
    })
    
  ];
  
}
