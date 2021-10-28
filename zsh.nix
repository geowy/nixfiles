{ config, ... }:
{
  programs.zsh = {
    enable = true;

    autocd = true;
    cdpath = ["." "~"];
    defaultKeymap = "emacs";

    completionInit = ''
        autoload -U compinit
        zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
        compinit
    '';

    history = {
      ignoreDups = true;
      share = true;
    };

    shellAliases = {
      agw = "~/Agworld/agw/agw";
      e = "$EDITOR";
      g = "git";
      ga = "git add";
      gaa = "git add --all";
      gaac = "git add --all; git commit --verbose";
      gb = "git branch";
      gc = "git commit --verbose";
      gca = "git commit --all --verbose";
      gco = "git checkout";
      gd = "git diff";
      gf = "git fetch";
      gl = "git pull";
      gm = "git merge";
      gp = "git push";
      gpu = "git push --set-upstream origin HEAD";
      gs = "git status";
      swag = "~/Agworld/swag/swag";
    };

    initExtraFirst = ''
      . ${config.home.homeDirectory}/.nix-profile/etc/profile.d/nix.sh
    '';

    initExtra = builtins.readFile ./support/config.zsh;
  };
}
