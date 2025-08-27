{
  programs.bash = {
    enable = true;
    historyControl = [ "erasedups" "ignoreboth" ];
    historyIgnore = [ "&" "[ ]*" "exit" "ls" "l" "ll" "bg" "fg" "history" "clear" ];
    historyFile = "/home/blank/.local/state/bash/history";
    historyFileSize = 100000;
    historySize = 500000;
    sessionVariables = {
      LESSCOLOR = "always";
      BAT_THEME = "OneHalfDark";
      FZF_DEFUALT_COMMAND = "fd .";
      FZF_DEFAULT_OPTS = "--ansi --color='16,hl:magenta' --prompt='$ ' --marker='+' --info=inline-right --no-scrollbar --no-separator --no-unicode";
      MANPAGER = "nvim +Man!";
      conf= "$HOME/.config";
      pics= "$HOME/Pictures";
      dwldir= "$HOME/.local/src/dwl";
      vimdir= "$HOME/.config/nvim";
      xdgdir= "/etc/xdg/";
      ddir= "/etc/systemd/";
      sourcedir= "$HOME/.local/src";
      privdir= "$HOME/.local/share/Private";
      usbdir= "/run/media/blank";
      snipdir= "$HOME/Documents/snippets";
    };

    shellAliases = {
      sudo = "sudo";
      svim = "sudo nvim";
      grep = "grep --color=auto";
      wget = "wget --hsts-file=~/.local/state/wget-hsts";
      info = "info --vi-keys";
      fd = "fd --hidden";
      cp = "cp --reflink=auto";
      pd = "pushd";
      ls = "ls -1F --color=auto --group-directories-first";
      l = "ls -1FA --color=auto --group-directories-first";
      ll = "ls -lahF --color=auto --group-directories-first";

      bashconf = "nvim $HOME/.bashrc";
      vimconf = "nvim ~/.config/nvim/init.lua";
      hyprconf = "nvim ~/.config/hypr/hyprland.conf";
      nixconf = "sudo nvim /etc/nixos/configuration.nix";
      nixpkgconf = "sudo nvim /etc/nixos/pkgs.nix";
      nixservconf = "sudo nvim /etc/nixos/services.nix";

      recompile = "make -j8 clean ; make -j8 ; sudo make -j8 install";
      cconf = "nvim config.h ; make -j8 clean ; make -j8 ; sudo make -j8 install";
      fontlist = "fc-list | cut -f2 -d: | sort -u";
      clipclean = "cliphist wipe";
      mp3 = "cd ~/Music && yt-dlp -x --embed-thumbnail --audio-format mp3";
      dl-vid = "yt-dlp -f 'best[ext=mp4]'";
    };

    shellOptions = [
      "checkwinsize"
      "globstar"
      "histappend"
      "cmdhist"
      "dirspell"
      "cdspell"
      "autocd"
      "progcomp_alias"
      "cdable_vars"
    ];

    initExtra = ''
        set -o vi
        PROMPT_COMMAND='history -a'
        PROMPT_DIRTRIM=3
        CDPATH=".:~:~/.config:/etc"
        PS1='\[\e[0;35m\]\h@\[\e[3;34m\]\w\[\e[00m\] \[\e[0;37m\]\$\[\e[00m\] '
        set +o noclobber
        bind Space:magic-space
        bind -m vi-command    '"\C-e": "\C-z\C-t\C-z"'
        bind -m vi-insert     '"\C-e": "\C-z\C-t\C-z"'
        bind -m vi-command -x '"\C-e": fzf-file-widget'
        bind -m vi-insert -x  '"\C-e": fzf-file-widget'
        bind -m vi-command 'Control-l: clear-screen'
        bind -m vi-insert 'Control-l: clear-screen'
        bind -m vi-command -x '"\C-y": "yy \n"'
        bind -m vi-insert -x '"\C-y": "yy \n"'
        bind "set completion-ignore-case on"
        bind "set completion-map-case on"
        bind "set show-all-if-ambiguous on"
        bind "set mark-symlinked-directories on"
        bind '"\e[A": history-search-backward'
        bind '"\e[B": history-search-forward'
        bind '"\e[C": forward-char'
        bind '"\e[D": backward-char'
    '';

    profileExtra = ''
      if uwsm check may-start && uwsm select; then
        exec uwsm start default
      fi
    '';

  };
}
