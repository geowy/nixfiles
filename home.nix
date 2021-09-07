{ config, pkgs, ... }:
{
  home = {
    username = "george";
    homeDirectory = "/Users/george";
    stateVersion = "21.11"; # DO NOT CHANGE
  };

  imports = [
    ./bat.nix
    ./darwin.nix
    ./direnv.nix
    ./fzf.nix
    ./git.nix
    ./gotop.nix
    ./home-manager.nix
    ./htop.nix
    ./lazygit.nix
    ./neovim.nix
    ./packages.nix
    ./session.nix
    ./zsh.nix
  ];

  # TODO: programs.gh
  # TODO: programs.gpg
  # TODO: programs.ssh
}
