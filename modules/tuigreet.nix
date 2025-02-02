{ pkgs, ... }: {

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --asterisks --remember-user-session --cmd Hyprland";
        user = "kalthun";
      };
    };
  };
}

/*
TODO:
- Format Time
- Welcome Message (Pokemon??) / Song Lyrics?
*/
