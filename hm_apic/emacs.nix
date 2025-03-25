{  pkgs,... }:

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs30-pgtk;
    extraPackages = epkgs : [ epkgs.magit epkgs.treesit-grammars.with-all-grammars];
  };
}
