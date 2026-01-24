{ config, lib, pkgs, inputs, ... }: 

{
  imports = [
    ./system/imports-sys.nix
    ./pkgs/packages.nix
    ./another/import.nix
    ./hard.nix
  ];
}