{ config, ... }:

{
  home.sessionVariables = {
    XDG_DATA_HOME = "$HOME/.local/share";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_STATE_HOME = "$HOME/.local/state";
    XDG_CACHE_HOME = "$HOME/.cache";
    CFLAGS = "-march=native -O2 -pipe -flto";
    GDK_BACKEND = "wayland";
    QT_QPA_PLATFORMTHEME = "gtk3";
    XCURSOR_THEME = "Adwaita";
    XCURSOR_SIZE = "24";
    GTK_THEME = "myonedark";
    ADW_DEBUG_COLOR_SCHEME = "prefer-dark";
    GTK2_RC_FILES = "${config.home.sessionVariables.XDG_CONFIG_HOME}/gtk-2.0/gtkrc";
    LESSHISTFILE = "${config.home.sessionVariables.XDG_STATE_HOME}/lesshst";
    PARALLEL_HOME = "${config.home.sessionVariables.XDG_CONFIG_HOME}/parallel";
    W3M_DIR = "${config.home.sessionVariables.XDG_DATA_HOME}/w3m";
  };

  services  = {
    swww = {
      enable = true;
    };
    cliphist = {
      enable = true;
      allowImages = true;
      systemdTargets = "graphical-session.target";
      extraOptions = [
        "-max-items"
        "30"
      ];
    };
    hypridle = {
      enable = true;
      settings = {
        general = {
          before_sleep_cmd = "loginctl lock-session";
          after_sleep_cmd = "hyprctl dispatch dpms on";
          lock_cmd = "basedlock";
        };
        listener = [
          {
            timeout = 2000;
            on-timeout = "loginctl lock-session";
          }
          {
            timeout = 2100;
            on-timeout = "hyprctl dispatch dpms off";
            on-resume = "hyprctl dispatch dpms on";
          }
          {
            timeout = 3600;
            on-timeout = "systemctl suspend";
          }
        ];
      };
    };
  };

  xdg.configFile."uwsm/env".source = "${config.home.sessionVariablesPackage}/etc/profile.d/hm-session-var.sh";
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    systemd.enable = false;
    #"waybar"
    #"hypridle"
          #"dunst"
          #   "wl-paste --watch cliphist -max-items 30 store"
    settings = {
      exec-once = 
        [
          "swww_randomize.sh"
        ];
    };
  };
}
