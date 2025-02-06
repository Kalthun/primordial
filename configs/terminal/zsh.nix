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
        "zsh-vi-mode"
        "colored-man-pages"
      ];
      theme = "duellj";
    };

  };

}
