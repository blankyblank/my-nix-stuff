{ pkgs, ... }:

{
  imports = [
    ./shell
    ./programs
    ./hypr
  ];

  home.packages = with pkgs; [
    wikiman
    fzf
    wofi
    foot
    waybar
    obs-studio
    vesktop
  ];
}
