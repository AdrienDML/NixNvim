{
  description = "My neovim config";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/master";
    nl.url = "github:DieracDelta/nix2lua";
    neovim = {
      url =
        "github:neovim/neovim?rev=0c3054b033d376fff9acd456ec2e3dbd139e2bbb&dir=contrib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    telescope-src = {
      url =
        "github:nvim-telescope/telescope.nvim?rev=b5c63c6329cff8dd8e23047eecd1f581379f1587";
      flake = false;
    };
    nvim-cmp = {
      url = "github:hrsh7th/nvim-cmp";
      flake = false;
    };
    cmp-nvim-lsp = {
      url = "github:hrsh7th/cmp-nvim-lsp";
      flake = false;
    };
    cmp-buffer = {
      url = "github:hrsh7th/cmp-buffer";
      flake = false;
    };
    rnix-lsp = {
      url = "github:nix-community/rnix-lsp";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };


  outputs = {self, ...}@inputs: {

  };
}
