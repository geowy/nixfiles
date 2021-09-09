{
  programs.ssh = {
    enable = true;
    extraConfig = builtins.readFile ./vault/support/config.agworld.ssh;
  };
}
