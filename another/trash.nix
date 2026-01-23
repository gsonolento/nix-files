{ config, lib, pkgs, ... }:

{
 
  nix.settings.auto-optimise-store = true;

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 14d";
  };

programs.nh = {
  enable = true;

  clean = {
    enable = true;
    extraArgs = "--keep-since 7d --keep 5";
  };

  flake = "/etc/nixos";
};

  zramSwap = {
    enable = true;
    memoryPercent = 75;
    algorithm = "lzo-rle";
    priority = 5;
  };


  powerManagement.enable = true;
}
