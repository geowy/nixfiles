{ pkgs, ... }:
let
  ancient-colors-vim = import ./ancient-colors-vim.nix pkgs;
in {
  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    plugins = with pkgs.vimPlugins; [
      ack-vim
      ale
      ancient-colors-vim
      bclose-vim
      coc-css
      coc-emmet
      coc-eslint
      coc-git
      coc-go
      coc-html
      coc-json
      coc-nvim
      coc-prettier
      coc-solargraph
      coc-yaml
      fzf-vim
      lf-vim
      matchit-zip
      ranger-vim
      vim-better-whitespace
      vim-fugitive
      vim-go
      vim-polyglot
      vim-signature
      vim-signify
      vim-terraform
    ];

    extraConfig = builtins.readFile ./support/config.vim;
  };
}
