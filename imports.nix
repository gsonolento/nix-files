{ config, lib, pkgs, inputs, ... }: 

{
  imports = [
    ./system/imports-sys.nix
    ./pkgs/packages.nix
    ./another/imports-ano.nix
    ./hard.nix
  ];
}