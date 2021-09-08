{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "George Wyatt";
    userEmail = "georgewyatt@fastmail.com";
  };
  home.packages = [ pkgs.git-crypt ];
}
