{ config, pkgs, ... }:

{
  services.xserver.enable = true;

  services.xserver.videoDrivers = [ "modesetting" ];

  services.xserver.windowManager = {
    i3.enable = true;
    bspwm.enable = true;
    openbox.enable = true;
  };
 services.displayManager.ly = {
    enable = true;
    settings = {
      animation = "matrix";
      clear_password = false;
      hide_borders = false;
    };
  };
}
