{
  inputs = {
    nixpkgs.url = "nixpkgs/21.11";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.ermm = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    };
  };
}
