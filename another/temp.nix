{ config, pkgs, ... }:

{
  # No NixOS, o River é habilitado assim:
  programs.river-classic.enable = true;

  # Se você quiser usar o gerador de Dwindle (caravan), adicione ele:
  environment.systemPackages = with pkgs; [
    waybar 
    swaybg
    river-filtile 
  ];
}