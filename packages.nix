{ pkgs, ... }:
{
  home.packages = with pkgs; [
    aws-vault
    awscli
    dash
    deno
    ffmpeg
    fswatch
    gh
    git
    git-crypt
    glow
    gnupg
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
}
