{
  imports = [
    ./system
  ];

  users.users.blank = {
    isNormalUser = true;
    description = "blank";
    extraGroups = [ "resolvconf" "rtkit" "wheel" ];
  };

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  security = {
    sudo = {
      enable = true;
      wheelNeedsPassword = false;
      configFile = ''
        Defaults pwfeedback
        Defaults env_keep += "SUDO_EDITOR EDITOR VISUAL"
        Defaults env_keep += "XDG_RUNTIME_DIR"
        Defaults env_keep += "WAYLAND_DISPLAY"
      '';
    };
    rtkit.enable = true;
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  nix.settings = {
    use-xdg-base-directories = true;
    auto-optimise-store = true;
    experimental-features = [ "nix-command" "flakes" ];
  };

  system.stateVersion = "25.05";

}
