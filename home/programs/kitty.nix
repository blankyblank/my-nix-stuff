{
  programs.kitty = {
    enable = true;
    font = {
      name = "CaskaydiaCove Nerd Font";
      size = 16;
    };
    themeFile = "OneDark-Pro";
    #enableGitIntegration = true;
    shellIntegration = {
      enableBashIntegration = true;
      mode = "no-cursor";
    };
    settings = {
      cursor_trail = "1";
      cursor_trail_decay = "0.1 0.3";
      cursor_trail_start_threshold = "3";
      scrollback_pager = "less --chop-long-lines --RAW-CONTROL-CHARS +INPUT_LINE_NUMBER";
      scrollback_pager_history_size = "3";
      scrollback_fill_enlarged_window = "yes";
      wheel_scroll_min_lines = "2";
      open_url_with = "default";
      detect_urls = "yes";
      window_padding_width = "2";
      confirm_os_window_close = "0";
      editor = "nvim";
      notify_on_cmd_finish = "invisible";
    };
  };
}
