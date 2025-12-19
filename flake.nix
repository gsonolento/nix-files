{
    description = "You have no heart"

    inputs={
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
    };
        chaotic = {
            url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
        };
    };

    outputs = inputs@{ self, nixpkgs, chaotic, home-manager,  ... }: {
      nixosConfigurations.apollo = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
          modules = [
           ./configuration.nix
            chaotic.nixosModules.default
            home-manager.nixosModules.home-manager
      ];
  };
    homeConfigurations = {
      "gus@apollo" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          system = "x86_64-linux";
        };
        modules = [ ./home.nix ];
      };
    };
  };
}