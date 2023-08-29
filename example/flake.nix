{
  description = "Example C package";

  inputs = {
    nixpkgs = {
      url = github:nixos/nixpkgs?ref=23.05;
    };
  };
    
  outputs = { 
    self, 
    nixpkgs, 
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    packages.${system} = {
      default = pkgs.btop;
      myfox = pkgs.librewolf;

    };
  };
}