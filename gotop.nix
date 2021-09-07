{ pkgs, config, ... }:
{
  home.packages = [ pkgs.gotop ];
  home.file."Library/Application Support/gotop/gotop.conf".text = ''
    colorscheme=solarized
  '';
}
