{
  programs.ssh = {
    enable = true;
    extraConfig = builtins.readFile ./vault/config.agworld.ssh;
  };
}
