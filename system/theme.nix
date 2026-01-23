{ pkgs, ... }:

{
  environment.variables = {
    XCURSOR_THEME = "WhiteSur-cursors";
  };

  gtk = {
    enable = true;

    theme = {
      name = "WhiteSur-Dark";
      package = pkgs.whitesur-gtk-theme;
    };

    iconTheme = {
      name = "WhiteSur-dark";
      package = pkgs.whitesur-icon-theme;
    };
  };
}
