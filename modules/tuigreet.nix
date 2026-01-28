{ pkgs, ... }: {

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.writeShellScriptBin "tuigreet-wrapper" ''
          FORTUNE=$(${pkgs.fortune}/bin/fortune)
          exec ${pkgs.tuigreet}/bin/tuigreet -t -r --asterisks --greeting "$FORTUNE" --cmd start-hyprland
        ''}/bin/tuigreet-wrapper";
        user = "greeter";
      };
    };
  };
}

# TODO: multiple desktop envs
