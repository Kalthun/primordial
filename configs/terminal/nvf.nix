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
            inherit (colors) base00 base01 base02 base03 base04 base05 base06 base07;
            inherit (colors) base08 base09 base0A base0B base0C base0D base0E base0F;
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

      vim.lazy.plugins = {
        "tabout.nvim" = {
          package = pkgs.vimPlugins.tabout-nvim;
          setupModule = "tabout";
          setupOpts = {
            tabkey = "<Tab>";  # Key to trigger tabout
            backwards_tabkey = "<S-Tab>";  # Key to go backwards
            act_as_tab = true;  # Shift content if tab out is not possible
            act_as_shift_tab = false;  # Reverse shift content if tab out is not possible
            default_tab = "<C-t>";  # Default tab action
            default_shift_tab = "<C-d>";  # Reverse shift default action
            enable_backwards = true;
            completion = true;  # If tabkey is used in completion popup
            tabouts = [
              { open = "\""; close = "\""; }
              { open = "'"; close = "'"; }
              { open = "`"; close = "`"; }
              # { open = "<"; close = ">"; }
              { open = "{"; close = "}"; }
              { open = "["; close = "]"; }
              { open = "("; close = ")"; }
            ];
            ignore_beginning = true;
            exclude = [ ];  # Filetypes to exclude
          }; 

          event = [ "InsertCharPre" ];  # Lazy-load on insert event
          priority = 1000;
        };
      };

    };

  };

}
