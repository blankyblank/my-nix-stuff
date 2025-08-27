{ inputs, pkgs, ... }:

{

  nixpkgs.overlays = [ inputs.neovim-nightly-overlay ];

  nixpkgs.config.allowUnfree = true;
  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts._0xproto
    nerd-fonts.caskaydia-cove
    nerd-fonts.jetbrains-mono
    nerd-fonts.noto
    nerd-fonts.ubuntu
    nerd-fonts.ubuntu-mono
    nerd-fonts.ubuntu-sans
    nerd-fonts.hack
  ];

  environment.systemPackages = with pkgs; [
    efibootmgr
    grub2

    gcc
    clang-tools
    cargo
    nodejs_24

    bash
    dash
    plocate
    pass-wayland
    #    pass-git-helper
    git-credential-manager
    pass-secret-service
    ripgrep
    fd
    fzf
    bat
    btop
    yazi

    gettext
    texinfo
    wikiman
    jq
    rich-cli

    unzip
    nix-prefetch
    wget
    git
    mullvad

    alsa-utils
    pulsemixer

    adwaita-icon-theme
    nwg-look
    gtk3
    gtk4
    glib

    wl-clipboard
    corrupter
    slurp
    grim
    kitty
    brave
    qutebrowser
    python313Packages.adblock
    mullvad-browser
    tridactyl-native
  ];

  programs = {
    uwsm.enable = true;
    hyprland = { 
      enable = true;
      withUWSM = true;
      xwayland.enable = false;
    };

    gtklock.enable = true;
    appimage.enable = true;
    appimage.binfmt = true;
    bash.completion.enable = true;
    gnupg.agent = {
      enable = true;
    };

    neovim = {
      enable = true;
      package = pkgs.neovim-nightly;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };
  };

}

