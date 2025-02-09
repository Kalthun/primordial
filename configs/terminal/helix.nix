{ config, pkgs, ... }: {

  programs.helix.enable = true;

  programs.helix.settings = {

    editor = {
      mouse = false;
      cursorline = true;
      color-modes = true;
      bufferline = "always";
      auto-save = true;
      line-number = "relative";
      popup-border = "all";

      indent-guides.render = true;

      file-picker.hidden = false;

      cursor-shape = {
        insert = "bar";
        normal = "bar";
        select = "underline";
      };

      statusline = {
        # TODO:
      };

      lsp = {
        display-inlay-hints = true;
        auto-signature-help = true;
        display-messages = true;
      };

      end-of-line-diagnostics = "hint";

      inline-diagnostics = {
        cursor-line = "warning";
      };

      soft-wrap.enable = true;

    };

    
    
  };

}
