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

  };

}
