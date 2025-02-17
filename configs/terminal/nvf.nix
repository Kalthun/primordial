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

        keymaps = [
          {
            key = "<S-u>";
            mode = "n";
            action = "<C-r>";
          }
          {
            key = "<C-r>";
            mode = "n";
            action = "<S-u>";
          }
        ];

        # Use Stylix Colors
        theme = {
          enable = true;
          name = "base16";
          base16-colors = {
            base00 = config.lib.stylix.colors.base00;
            base01 = config.lib.stylix.colors.base01;
            base02 = config.lib.stylix.colors.base02;
            base03 = config.lib.stylix.colors.base03;
            base04 = config.lib.stylix.colors.base04;
            base05 = config.lib.stylix.colors.base05;
            base06 = config.lib.stylix.colors.base06;
            base07 = config.lib.stylix.colors.base07;
            base08 = config.lib.stylix.colors.base08;
            base09 = config.lib.stylix.colors.base0E;
            base0A = config.lib.stylix.colors.base0A;
            base0B = config.lib.stylix.colors.base0B;
            base0C = config.lib.stylix.colors.base0C;
            base0D = config.lib.stylix.colors.base0D;
            base0E = config.lib.stylix.colors.base09;
            base0F = config.lib.stylix.colors.base0F;
          };
          transparent = true;
        };

        spellcheck.enable = true;
        autopairs.nvim-autopairs.enable = true;

        autocomplete.nvim-cmp.enable = true;
        
        snippets.luasnip.enable = true;

        statusline.lualine = {
          enable = true;

          refresh = {
            statusline = 100;
            tabline = 100;
          };
        };

        telescope.enable = true;
        notify.nvim-notify.enable = true;

        languages = {
          enableLSP = true;
          enableExtraDiagnostics = true;
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
          fidget-nvim.enable = true;

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

        luaConfigRC.myconfig = /* lua */ ''
          local tab_settings = {
            nix = { tabstop = 2 },
            markdown = { tabstop = 4 },
            python = { tabstop = 4 },
            clang = { tabstop = 4 },
            rust = { tabstop = 4 },
          }

          for filetype, settings in pairs(tab_settings) do
            vim.api.nvim_create_autocmd("FileType", {
              pattern = filetype,
              callback = function()
                for option, value in pairs(settings) do
                  vim.bo[option] = value
                end
              end
            })
          end
        '';

      };

      # vim.lazy.plugins = {

      #   "magma-nvim" = {
      #     package = pkgs.vimPlugins.magma-nvim;
      #     setupModule = "magma";
      #     setupOpts = {
      #       automatically_open_output = false;
      #       image_provider = "ueberzug";
      #     };
      #     cmd = [
      #       "MagmaEvaluateOperator"
      #       "MagmaEvaluateLine"
      #       "MagmaEvaluateVisual"
      #       "MagmaReevaluateCell"
      #       "MagmaDelete"
      #       "MagmaShowOutput"
      #     ];
      #   }; 
      
      # };

    };

  };

}
