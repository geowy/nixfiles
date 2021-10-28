pkgs:
with pkgs; vimUtils.buildVimPluginFrom2Nix {
  pname = "ancient-colors-vim";
  version = "67b031f";

  src = fetchFromGitHub {
    owner = "saalaa";
    repo = "ancient-colors.vim";
    rev = "67b031f7daf4aa42cb602ba335df4bdea2627da5";
    sha256 = "1mckajzp9y21hx3yvmdq020q2c2drwkmk30xa35kpgva8jzxa7l9";
  };
}
