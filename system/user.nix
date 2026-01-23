{ pkgs, ... }:

{
  users.users.alice = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" "audio" ];
    shell = pkgs.zsh
    packages = with pkgs; [
      firefox
      git
      tree
    ];
  };
  programs.zsh.enable = true;
}
