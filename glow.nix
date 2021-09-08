{ pkgs, ... }:
{
  home.packages = [ pkgs.glow ];

  home.file."Library/Preferences/glow/glow.yml".text = builtins.toJSON {
    style = "light";
    local = true;
    mouse = true;
  };
}
