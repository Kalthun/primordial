{ config, pkgs, lib, inputs, ... }:
  let
    inherit (config.lib.stylix) colors;
  in
{
  programs.nvf = {

    enable = true;

    settings = {

      vim = {

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

        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

        languages = {

          enableLSP = true;
          enableTreesitter = true;

          nix = {
            enable = true;
            treesitter.enable = true;
          };

          python = {
            enable = true;
            treesitter.enable = true;
          };

          clang = {
            enable = true;
            cHeader = true;
            treesitter.enable = true;
          };

          rust = {
            enable = true;
            treesitter.enable = true;
          };

        };

        treesitter = {
          enable = true;

          context = {
            setupOpts = {
              max_lines = 1;
            };
          };

          fold = true;
          highlight.enable = true;
          indent.enable = true;
        };

        extraConfig = ''
          " Set tab settings for different languages
          augroup LanguageSpecificTabs
            autocmd!
            
            " Nix: 2-space indentation
            autocmd FileType nix setlocal tabstop=2 shiftwidth=2 expandtab
            
            " C/C++: 4-space indentation, no expandtab
            autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 noexpandtab
            
            " Python: 4-space indentation, uses spaces instead of tabs
            autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
            
            " Rust: 4-space indentation, uses spaces instead of tabs
            autocmd FileType rust setlocal tabstop=4 shiftwidth=4 expandtab
          augroup END
        '';

      };

    };

  };

}
