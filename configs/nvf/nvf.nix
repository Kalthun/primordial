{ config, pkgs, lib, inputs, ... }: {

  imports = [ inputs.nvf.homeManagerModules.default ];

  programs.neovim.enable = true;  

  programs.nvf = {

    enable = true;

    
    
  };
  
}
