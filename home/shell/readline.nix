{
  programs.readline = {
    enable = true;
    variables = {
      bell-style = "none";
      meta-flag = true;
      input-meta = true;
      convert-meta = false;
      output-meta = true;

      editing-mode = "vi";
      show-mode-in-prompt = true;
      skip-completed-text = true;
      mark-symlinked-directories = true;
      visible-stats = true;
      colored-stats = true;
      colored-completion-prefix = true;
      menu-complete-display-prefix = true;
      show-all-if-ambiguous = true;
      show-all-if-unmodified = true;
      completion-ignore-case = true;
      completion-map-case = true;
      page-completions = false;
    };
    extraConfig = ''
      set vi-ins-mode-string \1\e[6 q\2
      set vi-cmd-mode-string \1\e[2 q\2
      "\[Z": menu-complete-backward
      TAB: menu-complete
    '';
  };
}
