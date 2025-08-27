{ pkgs, ... }:
{
  programs = {
    fzf = {
      enable = true;
      enableBashIntegration = true;
    };
    bashmount.enable = true;
    password-store = {
      enable = true;
      package = pkgs.pass-wayland;
    };
    gh.gitCredentialHelper.enable = true;
  };
}

