{ config, pkgs, lib, inputs, ... }:
  let
    inherit (config.lib.stylix) colors;
  in
{
  programs.nvf = {

    enable = true;

    settings = {

      vim = {

        viAlias = true;
        vimAlias = true;

        # Use Stylix Colors
        theme = {
          enable = true;
          name = "base16";
          base16-colors = {
            inherit (colors) base00 base01 base02 base03 base04 base05 base06 base07;
            inherit (colors) base08 base09 base0A base0B base0C base0D base0E base0F;
          };
          transparent = true;
        };

        spellcheck.enable = true;
        autopairs.nvim-autopairs.enable = true;
        autocomplete.nvim-cmp.enable = true;

        statusline.lualine = {
          enable = true;
          
          refresh = {
            statusline = 100;
            tabline = 100;
          };
        };

        telescope.enable = true;
        nvim-notify.enable = true;

        languages = {
          enableLSP = true;
          enableTreesitter = true;

          nix = {
            enable = true;
          };

          markdown = {
            enable = true;
          };

          python = {
            enable = true;
          };

          clang = {
            enable = true;
            cHeader = true;
          };

          rust = {
            enable = true;
          };

        };

        options = {
          # Default indentation settings
          tabstop = 4;
          shiftwidth = 0;
          expandtab = true;
          wrap = true;
          autoindent = true;
          cmdheight = 0;
        };

        comments.comment-nvim.enable = true;

        git = {
          enable = true;
          gitsigns.enable = true;
          gitsigns.codeActions.enable = false; # ERR message
        };

        visuals = {
          nvim-scrollbar.enable = true;
          nvim-cursorline.enable = true;
          cinnamon-nvim.enable = true; # DESC: Scrolls nicely
          highlight-undo.enable = true;

          indent-blankline = {
            enable = true;
            setupOpts.indent = {
              smart_indent_cap = true;
            };
          };
          
        };

        treesitter = {
          enable = true;

          context = {
            enable = true;
            setupOpts = {
              max_lines = 2;
            };
          };

          fold = true;
          highlight.enable = true;
          indent.enable = true;
        };

      };

    };

  };

}
