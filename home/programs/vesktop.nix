{
  programs.vesktop = {
    enable = true;
    settings = {
      discordBranch = "stable";
      tray = false;
      disableSmoothScroll = true;
      hardwareAcceleration = true;
      enableSplashScreen = false;
      arRPC = false;
    };
    settings.vencord = {
      autoUpdate = true;
      autoUpdateNotification = false;
      plugins = {
        PlainFolderIcon.enabled = true;
        YoutubeAdblock.enabled = true;
        FakeNitro.enabled = true;
      };
    };
  };
}
