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


      if [[ -z $ZELLIJ ]]; then

        SESSION_NAME="DEF"
        SESSION_LIST=$(zellij list-sessions)

        if echo "$SESSION_LIST" | grep -E "^$SESSION_NAME\s+.*exited" > /dev/null; then
          zellij delete-session "$SESSION_NAME"
        fi
        
        if zellij list-sessions --short | grep -q "^$SESSION_NAME$"; then
          zellij attach "$SESSION_NAME"
        else
          zellij --session "$SESSION_NAME"
        fi

      fi
      
    '';

  };

}
