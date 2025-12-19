{ config, lib, pkgs, inputs, ... }: {

  environment.systemPackages = with pkgs; [
    imports = [ ./fonts/fonts.nix ];
    foot
    fastfetch
    appimage-run
    ly
    doas
    nh
    home-manager
    swaybg
    waybar
    rofi
    pywal
    grim
    slurp
    git
    wget
    unrar
    hyprland
    sway
    nemo
    swaync
 ];
}