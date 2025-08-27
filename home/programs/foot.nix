{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "FiraCodeNerdFont:size=15";
        dpi-aware = "no";
        box-drawings-uses-font-glyphs = "yes";
        locked-title = "yes";
        title = "foot";
        pad = "1x2 center";
        resize-keep-grid = "yes";
        bold-text-in-bright = "yes";
        workers = "16";
        include = "~/.config/foot/themes/onedark";
      };
      bell = {
        urgent = "no";
        notify = "no";
        visual = "no";
      };
      scrollback = {
        lines = "3000";
        multiplier = "3.0";
      };
      mouse = {
        hide-when-typing = "yes";
      };
      colors = {
        alpha = "0.9";
      };
    };
  };
}
