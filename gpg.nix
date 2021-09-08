{ pkgs, ... }:
{
  # TODO
  programs.gpg = {
    enable = false;
  };
  home.packages = [ pkgs.gnupg ];
}
