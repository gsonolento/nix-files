{ config, pkgs, inputs, ... }:

{
    


  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Básicos
    nano wget git fastfetch

    # Terminais
    kitty alacritty 

    # X11
    dmenu  rofi polybar picom slock sxhkd tint2

    # Wayland
    wayland nwg-look

    # Arquivos / util
    thunar xclip flameshot dunst libnotify appimage-run pear-desktop  mesa
   libGL
   libEGL
   glfw

    # Dev
    vscodium

    # Fontes
    nerd-fonts.iosevka
    nerd-fonts.jetbrains-mono

    # Tema
    whitesur-gtk-theme
    whitesur-icon-theme
    whitesur-cursors

    # Browser
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
