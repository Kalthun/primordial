{ config, pkgs, lib, inputs, ... }:

{

  nixpkgs.overlays = [

    (final: prev: {
      zjstatus = inputs.zjstatus.packages.${prev.system}.default;
    })
    
  ];
  
}
