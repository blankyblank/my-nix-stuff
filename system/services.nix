{ pkgs, ... }:

{
  systemd.services.mullvad-connect = {
    description = "Connect to a mullvad server";
    wantedBy = [ "multi-user.target" ];
    after = [ "network.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.mullvad}/bin/mullvad connect";
    };
  };

  services = {
    udev.extraRules = ''
    ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="amdgpu_bl1", MODE="0666", RUN+="${pkgs.coreutils}/bin/chmod a+w /sys/class/backlight/%k/brightness"
    '';
    #acpid.enable = true;
    pulseaudio.enable = false;
    mullvad-vpn.enable = true;
    locate = {
      enable = true;
      interval = "12hr";
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    orca.enable = false;
    speechd.enable = false;
  };

  # List services that you want to enable:
  #services.hypridle.enable = true;
}

