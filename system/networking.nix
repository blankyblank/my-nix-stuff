{
  networking = {
    hostName = "mehNixos"; # Define your hostname.
    nameservers = [ "194.242.2.3#adblock.dns.mullvad.net" ];
    dhcpcd.enable = false;
    firewall.enable = true;
    wireless.iwd = {
      enable = true;
      # add one for Network NameResolvingService=resolved if needed
      settings = {
        General = {
          EnableNetworkConfiguration = true;
        };
        IPv6 = { Enabled = true;
        };
        Settings = {
          AlwaysRandomizeAddress = true;
        };
        DriverQuirks = {
          PowerSaveDisable = "iwlwifi";
        };
      };
    };
  };

  time.timeZone = "America/Chicago";

  services.resolved = {
    enable = true;
    dnssec = "allow-downgrade";
    domains = ["~."];
    fallbackDns = [ "194.242.2.2#dns.mullvad.net" ];
    dnsovertls = "true";
    extraConfig = '' 
      cache=yes
    '';
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = true;
}
