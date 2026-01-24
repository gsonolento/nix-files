{ config, pkgs, ... }:

{
  imports = [
    ./doas.nix
    ./power.nix
    ./trash.nix
    ./temp.nix
  ];
}