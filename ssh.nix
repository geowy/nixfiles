{
  programs.ssh = {
    enable = true;
    extraConfig = builtins.readFile ./vault/ssh/config.Agworld;
  };
}
