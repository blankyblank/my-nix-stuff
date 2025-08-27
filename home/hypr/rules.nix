{
  wayland.windowManager.hyprland.extraConfig = ''

    monitor=eDP-1,highres@highrr,auto,1
    layerrule = dimaround, wofi
    layerrule = blur, wofi
    layerrule = dimaround, launcher
    layerrule = blur, launcher

    #permission = /usr/bin/grim, screencopy, allow
    workspace = special:discord, on-created-empty:vesktop --ozone-platform-hint=wayland
    windowrulev2 = center,class:^(vesktop)$
    windowrulev2 = float,class:^(vesktop)$
    windowrulev2 = size 1500 1000,class:^(vesktop)$
    workspace = special:matrix, on-created-empty:element-desktop --ozone-platform-hint=auto
    windowrulev2 = center,class:^(Element)$
    windowrulev2 = float,class:^(Element)$
    windowrulev2 = size 1500 1000,class:^(Element)$
    workspace = special:alsaterm, on-created-empty:kitty --title="alsacat" -e pulsemixer
    windowrulev2 = center,title:^(alsacat)$
    windowrulev2 = float,title:^(alsacat)$
    windowrulev2 = size 1500 1000,title:^(alsacat)$
    workspace = special:iwterm, on-created-empty:foot --title="interfoot" -e iwctl
    windowrulev2 = center,title:^(interfoot)$
    windowrulev2 = float,title:^(interfoot)$
    windowrulev2 = size 1500 1000,title:^(interfoot)$
    workspace = special:topterm, on-created-empty:foot --title="bfoot" -e btop
    windowrulev2 = center,title:^(bfoot)$
    windowrulev2 = float,title:^(bfoot)$
    windowrulev2 = size 1500 1000,title:^(bfoot)$
    windowrulev2 = float,title:^(footpg)$
    windowrulev2 = size 800 600,title:^(footpg)$
    windowrule = suppressevent maximize, class:.* # You'll probably like this.
    windowrule = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0

    windowrule = opacity 1.0 override , title:(.*)(- YouTube - Brave)$
    #windowrule = opacity 1.0 override, title:*Youtube*
    windowrule = opacity 1.0 override, class:zen
    windowrule = float,class:^(confirm)$
    windowrule = float,class:^(dialog)$
    windowrule = float,class:^(download)$
    windowrule = float,class:^(notification)$
    windowrule = float,class:^(error)$
    windowrule = float,class:^(xdg-desktop-portal-gtk)$
    windowrule = float,class:^(confirmreset)$
    windowrule = float,title:^(Open File)$
    windowrule = float,title:^(branchdialog)$
    windowrule = float,title:^(Confirm to replace files)
    windowrule = float,title:^(File Operation Progress)
    windowrule = float,class:^(pavucontrol)$
    windowrule = float,title:^(Volume Control)$
    windowrule = float,title:^(Properties)$
    windowrule = float,title:^(Picture-in-Picture)$
    windowrule = float,class:^(com.github.hluk.copyq)
    windowrule = float,class:^(org.keepassxc.KeePassXC)
    windowrule = float,class:^(blueman-manager)
    windowrule = float,class:^(nm-applet)$
    windowrule = float,class:^(xfce-polkit)$

    windowrule = opacity 0.70 override, class:(Fuzzel)$
    windowrule = opacity 0.70 override, class:(Wofi)$
    windowrule = opacity 0.70 override, title:(tofi)$
    windowrule = opacity 0.30 override, title:(notification)$
    windowrule = opacity 0.30 override, title:(Notification)$
    windowrule = opacity 0.30 override, class:(dunst)$
    windowrule = opacity 0.30 override, title:(Dunst)$
    windowrule = opacity 0.70 override, title:(launcher)$
    windowrule = opacity 0.95 override, class:(download)$
    windowrule = opacity 0.95 override, class:(confirm)$
    windowrule = opacity 0.95 override, class:(error)$
    windowrule = opacity 0.95 override, title:(Open File)$
    windowrule = opacity 0.95 override, title:(branchdialog)$
    windowrule = opacity 0.95 override, class:(pavucontrol)$
    windowrule = opacity 0.95 override, class:(Volume Control)$
    windowrule = opacity 1.0 override, class:(Picture-in-Picture)$
    windowrule = opacity 1.0 override, class:(gimp)$
    windowrule = opacity 0.95 override, title:(Save)$
    windowrule = opacity 0.95 override, class:(dialog)$
    windowrule = opacity 0.95 override, title:(File Operation Progress)$
    windowrule = opacity 0.95 override, title:(Confirm to replace files)$
    windowrule = opacity 0.95 override, title:(Open)$
    windowrule = opacity 0.95 override, class:(soffice)
    windowrule = opacity 0.95 override, title:(Preferences)
    windowrule = opacity 0.95 override, class:(blueman-manager)$
    windowrule = opacity 0.95 override, class:(nm-applet)$
    windowrule = opacity 0.95 override, title:(Open database)$
    windowrule = opacity 0.80 override, class:(glrnvim)$
    windowrule = opacity 0.80 override, class:(neovide)$
    windowrule = opacity 0.85 override, class:(kitty)$
    windowrule = opacity 0.85 override, class:(foot)$
    windowrule = opacity 0.80 override, class:(Alacritty)$

    windowrule = size 1000 700, class:(xdg-desktop-portal-gtk)$
    windowrule = size 800 600,class:^(download)$
    windowrule = size 800 600,title:^(Open File)$
    windowrule = size 1000 700,title:^(Pick a Font)$
    windowrule = size 800 600,title:^(Save File)$
    windowrule = size 800 600,title:^(Open database)$
    windowrule = size 1000 700,title:^(Volume Control)$
    windowrule=float,title:^(Spotify)$
  '';
}
