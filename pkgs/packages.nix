{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Básicos
    nano wget git pfetch

    # Terminais
    kitty alacritty foot

    # X11
    dmenu polybar picom slock sxhkd tint2

    # Wayland
    wayland nwg-look

    # Arquivos / util
    thunar xclip flameshot dunst libnotify appimage-run pear-desktop

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
