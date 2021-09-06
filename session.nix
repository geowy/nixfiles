{ config, ... }:
{
  home.sessionPath = [
    "${config.home.homeDirectory}/bin"
  ];

  home.sessionVariables = {
    CLICOLOR = 1;
    EDITOR = "nvim";
  };
}
