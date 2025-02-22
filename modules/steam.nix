{ config, pkgs, lib, ... }: {

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    gamescopeSession.enable = true;
    dedicatedServer.openFirewall = true;
  };

  programs.gamemode.enable = true;

}
