{
  wayland.windowManager.hyprland.settings = {
    "$terminal" = "kitty";
    "$fileManager" = "foot -e yazi";
    "$menu" = "wofi --show drun";
    "$mainMod" = "SUPER";
    "$mod1" = "Alt";

    # bindo = [ ", XF86Display,  exec, basedlock" ];
    bind =
      [
        "$mainMod SHIFT, C,      exec, uwsm stop"
        "$mainMod,       Q,      killactive,"
        "$Mod1 CONTROL,  Delete, exec, systemctl reboot"
        "$mainMod,       Return, exec, $terminal"
        "$mainMod,       S,      exec, foot"
        "$mainMod,       D,      exec, $menu"
        "$mainMod,       N,      exec, $fileManager"
        "$mainMod SHIFT, P,      exec, passmenu.sh"
        "$mainMod,       P,      exec, cliphist-wofi-img | wl-copy"
        "$mainMod,       W,      exec, qutebrowser"
        "$mainMod,       X,      exec, mullvad-browser"
        "$mainMod SHIFT, W,      exec, brave"
        "$mainMod,       C,      exec, zen-x86_64.AppImage"
        "$mainMod,       Z,      exec, zen-split-tunnel"

        "$mainMod,       Minus,  togglespecialworkspace, magic"
        "$mainMod SHIFT, Minus,  movetoworkspace, special:magic"
        "$mainMod,       V,      togglespecialworkspace, discord"
        "$mainMod,       E,      togglespecialworkspace, matrix"
        "$mainMod,       A,      togglespecialworkspace, alsaterm"
        "$mainMod SHIFT, N,      togglespecialworkspace, iwterm"
        "$mainMod,       R,      togglespecialworkspace, topterm"
        "$mainMod,   mouse_down, workspace, e+1"
        "$mainMod,   mouse_up,   workspace, e-1"
      ]
      ++ (
        # workspaces binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
        builtins.concatLists (builtins.genList (i:
          let ws = i + 1;
          in [
            "$mainMod, code:1${toString i}, workspace, ${toString ws}"
            "$mainMod SHIFT, code:1${toString i}, movetoworkspacesilent, ${toString ws}"
          ]
        )
          9)
      );

    binde =
      [
     "$mainMod,       J,      layoutmsg, cyclenext"
     "$mainMod,       K,      layoutmsg, cycleprev"
     "$mainMod,       H,      resizeactive, -15 0"
     "$mainMod,       L,      resizeactive, 15 0"
     "$mainMod SHIFT, Return, layoutmsg, swapwithmaster master"
     "$mainMod,       I,      layoutmsg, addmaster"
     "$mainMod SHIFT, I,      layoutmsg, removemaster"
     "$mainMod,       O,      layoutmsg, orientationcycle left center"
     "$mainMod SHIFT, Space,  togglefloating,"
     "$mainMod,       Space,  fullscreen,1"
     "$mainMod,       M,      fullscreen,1"
      ];
    bindl = 
      [
        ", switch:Lid Switch,    exec, basedlock"
        ",               Print,   exec, screenshot -s"
        "$mainMod,       Print,   exec, screenshot -f"
        ", XF86MonBrightnessUp,   exec, backlight.sh -u"
        ", XF86MonBrightnessDown, exec, backlight.sh -d"
        ", XF86AudioRaiseVolume,  exec, amixer -c 1 sset Master 5%+"
        ", XF86AudioLowerVolume,  exec, amixer -c 1 sset Master 5%-"
        ", XF86AudioMute,         exec, amixer set Master toggle"
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
        ", XF86Display,  exec, basedlock"
      ];
  };
}
