{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

    packages.aarch64-darwin.hello = nixpkgs.legacyPackages.aarch64-darwin.hello;

    packages.aarch64-darwin.default = self.packages.aarch64-darwin.hello;


  };
}
