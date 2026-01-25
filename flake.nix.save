{
   inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    zen-browser.url = "github:youwen5/zen-browser-flake";
  };

  outputs = inputs@{ self, nixpkgs, zen-browser, ... }: {
    nixosConfigurations.hera = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = {
        inherit inputs;
      };

      modules = [
        ./imports.nix
      ];
    };
  };
}
