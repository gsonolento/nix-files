{ config, lib, pkgs, ... }:

{
     users.users.gus = {
     isNormalUser = true;
     extraGroups = [ "wheel" "seat" "video" "networkmanager" ];
     # pacotes do usuário
     packages = with pkgs; [
       tree
       vscodium
       equibop
       firefox
       zapzap
     ];
   };

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;















}

