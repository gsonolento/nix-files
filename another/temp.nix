{ config, pkgs, ... }:

{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    waybar
  ];

  hardware.opengl.enable = true;
  hardware.opengl.extraPackages = [ pkgs.mesa ];
}
