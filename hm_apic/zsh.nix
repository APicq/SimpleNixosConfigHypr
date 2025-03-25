{  host,... }:
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initExtra = ''
      bindkey "^H" backward-word
      bindkey "^J" down-line-or-history
      bindkey "^K" up-line-or-history
      bindkey "^L" forward-word
    '';

    shellAliases = {
      c = "clear";
      fr = "nh os switch --hostname ${host}";
      fu = "nh os switch --hostname ${host} --update";
      ncg = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
      cat = "bat";
      man = "batman";
      ls = "eza --icons --group-directories-first -1";
      ll = "eza --icons -a --group-directories-first -1 --no-user --long";
      tree = "eza --icons --tree --group-directories-first";
    };
  };
}
