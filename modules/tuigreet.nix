{ pkgs, ... }: {

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet -t -r --asterisks --cmd Hyprland";
        user = "greeter";
      };
    };
  };
}

/*
TODO:
- Format Time
- Welcome Message (Pokemon??) / Song Lyrics?
*/
