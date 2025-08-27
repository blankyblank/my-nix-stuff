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
      settings = {
        PASSWORD_STORE_DIR = "/home/blank/.local/share/password-store";
      };
    };
  };
}

