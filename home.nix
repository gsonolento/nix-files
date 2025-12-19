{pkgs, config, ...}: {

  home.username = "gus";
  home.homeDirectory = "/home/gus";

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
  
  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05"
  ;
}