{ config, pkgs, ... }:

{
  services.hyprland.enable = true;

  services.displayManager.ly.enable = true;

  environment.systemPackages = with pkgs; [
    waybar
  ];

  hardware.opengl.enable = true;
  hardware.opengl.extraPackages = [ pkgs.mesa ];
}
