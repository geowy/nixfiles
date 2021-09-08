{ config, pkgs, ... }:
{
  home = {
    username = "george";
    homeDirectory = "/Users/george";
    stateVersion = "21.11"; # DO NOT CHANGE
  };

  home.packages = with pkgs; [
    aws-vault
    awscli
    dash
    deno
    ffmpeg
    fswatch
    glow
    go
    httpie
    jq
    lf
    ruby
    shellcheck
    silver-searcher
    tree
    universal-ctags
    youtube-dl
  ];

  home.sessionPath = [
    "${config.home.homeDirectory}/bin"
  ];

  home.sessionVariables = {
    CLICOLOR = 1;
    EDITOR = "nvim";
  };

  imports = [
    ./bat.nix
    ./darwin.nix
    ./direnv.nix
    ./fzf.nix
    ./git.nix
    ./gotop.nix
    ./gpg.nix
    ./home-manager.nix
    ./htop.nix
    ./lazygit.nix
    ./neovim.nix
    ./ssh.nix
    ./zsh.nix
  ];
}
