{ config, pkgs, lib, inputs, ... }: {

  imports = [ inputs.nvf.homeManagerModules.default ];

  programs.nvf = {

    enable = true;

    
    
  };
  
}
