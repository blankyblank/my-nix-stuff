{ pkgs, ... }:
{
  services.dunst = {
    enable = true;
    waylandDisplay = ''
      wayland-1
    '';
    settings = {
      global = {
        icon_theme = "onehalf-dark-simple";
        icon_path = "/home/blank/.local/share/icons/onehalf-dark-simple";
        width = 300;
        height = 300;
        offset = "10x50";
        origin = "top-right";
        notification_limit = 13;
        transparency = 10;
        separator_height = 2;
        padding = 8;
        horizontal_padding = 8;
        line_height = 0;
        text_icon_padding = 2;
        gap_size = 6;
        corner_radius = 6;
        corners = "all";
        frame_width = 1;
        frame_color = "#c678dd";
        alignment = "left";
        vertical_alignment = "center";
        show_age_threshold = "60";
        ellipsize = "end";
        ignore_newline = "no";
        stack_duplicates = true;
        hide_duplicate_count = false;
        show_indicators = "yes";
        dmenu = "${pkgs.wofi}/bin/wofi -d -p dunst:";
        separator_color = "frame";
        sort = "update";
        font = "Hack Nerd Font 15";
        markup = "full";
        format = " <b>%s</b>\n%b ";
      };
      urgency_low = {
        background = "#282c34";
        foreground = "#abb2bf";
        highlight = "#c678dd";
        timeout = 7;
        default_icon = "dialog-information";
      };
      urgency_normal = {
        background = "#282c34";
        frame_color = "#5d677a";
        foreground = "#abb2bf";
        highlight = "#c678dd";
        timeout = 7;
        override_pause_level = 1;
        default_icon = "dialog-information";
      };
      urgency_critical = {
        foreground = "#e06c75";
        background = "#282c34";
        frame_color = "#5d677a";
        timeout = 0;
        override_pause_level = 60;
        default_icon = "dialog-warning";
      };
    };
  };
}
