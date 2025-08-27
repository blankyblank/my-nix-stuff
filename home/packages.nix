{ pkgs, ... }:

{
  imports = [
    ./shell
    ./programs
    ./hypr
    ./nixvim
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
