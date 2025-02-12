{ config, pkgs, lib, inputs, ... }: {

  programs.neovim.enable = true;

  programs.nvf = {

    enable = false;

    settings = {

      vim = {

        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

      };

    };

  };

}
