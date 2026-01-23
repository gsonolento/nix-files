{ config, pkgs, ... }:
{
  imports = [
    ./boot.nix
    ./interfaces.nix
    ./locale.nix
    ./networking.nix
    ./theme.nix
    ./user.nix
    ./xdg.nix
  ];
}