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
          # Just remaps Shift+U to redo
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

          # system clip
          {
            key = "<leader>y";
            mode = "v";
            action = "\"+y";
          }
        ];

        spellcheck.enable = true;
        autopairs.nvim-autopairs.enable = true;
        snippets.luasnip.enable = true;

        # autocomplete.nvim-cmp = {
        #   enable = true;
        # };

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

        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        options = {
          # Default indentation settings
          tabstop = 4;
          shiftwidth = 0;
          expandtab = true;

          wrap = true;
          autoindent = false; # breaks the proper setting
          cmdheight = 0;
        };

        comments.comment-nvim.enable = true;

        git = {
          enable = true;
          gitsigns.enable = true;
          gitsigns.codeActions.enable = false; # ERR message
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

        visuals = {
          nvim-scrollbar.enable = true;
          # nvim-cursorline.enable = true; # Wasn't working
          # cinnamon-nvim.enable = true; # DESC: Scrolls nicely
          highlight-undo.enable = true;
          fidget-nvim.enable = true;
          indent-blankline.enable = true;
        }; 

        extraPlugins = {
          
          smart-tab = {
            package = pkgs.vimUtils.buildVimPlugin {
              name = "smart-tab.nvim";
              src = pkgs.fetchFromGitHub {
                owner = "boltlessengineer";
                repo = "smart-tab.nvim";
                rev = "main";
                sha256 = "sha256-H1Nx0jgCKnaorjCNEUckJP2GOFmspcQTnfNSPPLxTM4=";
              };
            };
            setup = ''require("smart-tab").setup()'';
          };

        };

        luaConfigRC.tabstops =''
          local tab_settings = {
            nix = { tabstop = 2 },
            markdown = { tabstop = 2 },
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

    };

  };

}
