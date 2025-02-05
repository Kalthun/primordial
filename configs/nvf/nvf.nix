{ config, pkgs, lib, inputs, ... }: {

  programs.nvf = {

    enable = true;

    settings = {
      
      vim = {
    
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
  
      };
      
    };
    
  };
  
}
