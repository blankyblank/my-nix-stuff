{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  home = {
    username = "blank";
    homeDirectory = "/home/blank";
    shell.enableBashIntegration = true;
    preferXdgDirectories = true;
    sessionPath = [
      "$HOME/.local/bin"
      "$HOME/.config/scripts"
    ];
  };

  imports = [
    ./home/packages.nix
    ./home/services.nix
  ];

  programs = {
    gh.gitCredentialHelper.enable = true;
    git = {
      enable = true;
      extraConfig = {
        user = {
          email = "mymozzarella@hotmail.com";
          name = "blank blank";
        };
      };
    };
  };

  home.stateVersion = "25.05";
}
