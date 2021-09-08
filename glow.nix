{ pkgs, ... }:
{
  home.packages = [ pkgs.glow ];
  home.file."Library/Preferences/glow/glow.yml".text = ''
    # style name or JSON path (default "auto")
    style: "light"
    # show local files only; no network (TUI-mode only)
    local: true
    # mouse support (TUI-mode only)
    mouse: true
    # use pager to display markdown
    pager: false
    # word-wrap at width
    width: 80
  '';
}
