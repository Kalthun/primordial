{ config, pkgs, ... }: {

  programs.zsh = {

    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "eza -1 --icons=always --group-directories-first";
      tree = "tree --dirsfirst";
      cat = "bat";
      lg = "lazygit";
      nv = "nvim";
      zj = "zellij";
    };

    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

    oh-my-zsh = {
      enable = true;

      plugins = [
        "git"
        "sudo"
        "vi-mode"
        "colored-man-pages"
      ];

    };

    # Add custom configuration lines to .zshrc
    initExtra = ''
      # Enable custom cursor styles for vi-mode
      export ZVM_CURSOR_STYLE_ENABLED=true

      # Define cursor styles
      export ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLOCK
      export ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BEAM
      export ZVM_OPPEND_MODE_CURSOR=$ZVM_CURSOR_UNDERLINE

      # Function to update cursor based on mode
      function zvm_after_select_vi_mode() {
        case $ZVM_MODE in
          $ZVM_MODE_NORMAL)
            echo -ne '\e[2 q'  # Block cursor
            ;;
          $ZVM_MODE_INSERT)
            echo -ne '\e[6 q'  # Beam cursor
            ;;
          $ZVM_MODE_VISUAL)
            echo -ne '\e[4 q'  # Underline cursor
            ;;
        esac
      }

      export KEYTIMEOUT=1

      if echo "$TERMINFO" | rg -q "kitty"; then
        if [[ -z $ZELLIJ ]]; then
  
          SESSION_NAME="DEF"
          SESSION_LIST=$(zellij list-sessions)
  
          if echo "$SESSION_LIST" | sed 's/\x1B\[[0-9;]*m//g' | rg -q "^$SESSION_NAME.*\bEXITED\b"; then
            zellij delete-session "DEF"
          fi
  
          SESSION_LIST=$(zellij list-sessions --short)
  
          if echo "$SESSION_LIST" | rg -q "$SESSION_NAME"; then
            zellij attach "DEF"
          else
            zellij --session "DEF"
          fi
  
        fi
      fi

      # Lazyrun for cpp OpenGL
      function ogl () {
        if [[ -n "$1" ]]; then
          filename="$*"
        else
          filename="main"
        fi

        g++ "$filename".cpp -o output -lGLU -lGL -lGLEW -lglfw -lglut && ./output
      }

      # Lazyrun for cpp OpenCV
      function ocv () {
        if [[ -n "1" ]]; then
          filename="$*"
        else
          filename="main"
        fi

        g++ "$filename".cpp -o output $(pkg-config --cflags --libs opencv4) && ./output
      }

      # Let's Just Hope Buddy
      export __NV_PRIME_RENDER_OFFLOAD=1
      export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
      export __GLX_VENDOR_LIBRARY_NAME=nvidia
      export __VK_LAYER_NV_optimus=NVIDIA_only
      exec "$@"

     '';

  };

}
