{ pkgs, ... }:

{
  programs.dconf.enable = true;

  environment.variables = {
    GTK_THEME = "WhiteSur-Dark";
    ICON_THEME = "WhiteSur-dark";
    XCURSOR_THEME = "WhiteSur-cursors";
    XCURSOR_SIZE = "24";
  };

  environment.systemPackages = with pkgs; [
    whitesur-gtk-theme
    whitesur-icon-theme
    whitesur-cursors
    nwg-look
  ];
}
