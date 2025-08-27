{
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = "3";
      gaps_out = "5";
      border_size = "2";
      "col.active_border" = "rgba(61afefff) rgba(c678ddee) 180deg";
      "col.inactive_border" = "rgba(282C34fe)";
      resize_on_border = "false";
      allow_tearing = "false";
      layout = "master";
    };
    decoration = {
      rounding = "10";
      rounding_power = "1";
      active_opacity = "0.9";
      inactive_opacity = "0.9";
      shadow = {
        enabled = "false";
        range = "4";
        render_power = "3";
        color = "rgba(1a1a1aee)";
      };
      blur = {
        enabled = "true";
        size = "4";
        passes = "2";
        new_optimizations = "true";
        popups = "true";
      };
    };
    animations = {
      enabled = "true";
      bezier =
        [
          "in-out,.65,-0.01,0,.95"
          "woa,0,0,0,1"
          "easeOutQuint,0.23,1,0.32,1"
          "linear,0,0,1,1"
          "almostLinear,0.5,0.5,0.75,1.0"
          "quick,0.15,0,0.1,1"
        ];
      animation =
        [
          "windows,1,2,woa"
          "border,1,8,default"
          "fade,1,2,default"
          "workspaces,1,2,in-out,slide"
          "layers, 1, 3.81, woa"
          "layersIn, 1, 2, woa, fade"
          "layersOut, 1, 1.5, woa, fade"
          "fadeLayersIn, 1, 1.79, woa"
          "fadeLayersOut, 1, 1.39, woa"
        ];
    };
    xwayland = { enabled = "false"; };
    group = { insert_after_current = "false"; };
    master = {
        new_status = "master";
        mfact = "0.53";
        new_on_top = "true";
        allow_small_split = "true";
    };
    misc = {
      force_default_wallpaper = "1";
        disable_hyprland_logo = "true";
        mouse_move_enables_dpms = "true";
        key_press_enables_dpms = "true";
        enable_swallow = "true";
        swallow_regex = "kitty";
        middle_click_paste = "false";
        animate_manual_resizes= "yes";
        animate_mouse_windowdragging= "yes";
        focus_on_activate = "true";
    };
    input = {
      kb_layout = "us";
      kb_options = "caps:swapescape";
      repeat_rate = "55";
      repeat_delay = "300";
      follow_mouse = "1";
      accel_profile = "adaptive";
      sensitivity = "0.3";
      touchpad = {
        natural_scroll = "false";
        clickfinger_behavior = "false";
        disable_while_typing = "true";
      };
    };
    gestures = {
      workspace_swipe = "true";
      workspace_swipe_distance = "350";
      workspace_swipe_forever = "true";
    };

    device = {
      name = "epic-mouse-v1";
      sensitivity = "-0.5";
    };
    cursor = {
      persistent_warps = "true";
      sync_gsettings_theme = "true";
    };
  };
}
