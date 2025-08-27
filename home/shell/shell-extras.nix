{
  programs = {
    fzf = {
      enable = true;
      enableBashIntegration = true;
    };
    bashmount.enable = true;
    password-store = {
      enable = true;
      settings = {
        PASSWORD_STORE_DIR = "$XDG_DATA_HOME/password-store";
      };
    };
  };
}

