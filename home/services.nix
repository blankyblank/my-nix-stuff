{ pkgs, ... }:
{
  services = { 
    pass-secret-service = {
      enable = true;
    };
  };

   #systemd.user.timers.mullvad-reconnect.enable = true;
   #systemd.services.mullvad-connect.enable = true;

  systemd.user = {
    enable = true;
    startServices = "sd-switch";
    timers = {
      mullvad-reconnect = {
        Unit = {
          Description = "mullvad-reconnect.service";
        };
        Install = {
            WantedBy = [ "timers.target" ];
          };
        Timer = {
          OnBootSec = "25m";
          OnUnitActiveSec = "40m";
        };
      };
    };

    services = {
      mullvad-reconnect = {
        Unit = {
            Description = "change mullvad server";
          };
         #Install = {
         #    wantedBy = [ "default.target"];
         #  };
        Service = {
          #Type = "oneshot";
          ExecStart = "${pkgs.mullvad}/bin/mullvad reconnect";
        };
      };
    };
  };
}
