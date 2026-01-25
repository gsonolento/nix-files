{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    videoDrivers = [ "modesetting" ];

    windowManager = {
      bspwm.enable = true; # Desative se não for usar mais
    };
  };

  services.displayManager.ly = {
    enable = true;
    settings = {
      animation = "matrix";
      clear_password = false;
      hide_borders = false;
    };
  };

  environment.systemPackages = with pkgs; [
    rofi
    playerctl
    brightnessctl
    pamixer
    nitrogen    # Para o wallpaper
    polybar     # Para a barra (já que o HLWM não tem)
  ];
}