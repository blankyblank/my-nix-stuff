{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = {

      mainBar = {
        position = "top";
        spacing = "0";
        reload_style_on_change = true;
        modules-left = ["hyprland/workspaces"];
        modules-center = [ "custom/vpn" "network" ];
        modules-right = [ "tray" "idle_inhibitor" "battery" "clock" ];

        "hyprland/workspaces" = {
          "disable-scroll" = true;
          "warp-on-scroll" = false;
          "format"= "{name}";
          "persistent-workspaces" = {
            "eDP-1" = ["1" "2" "3" "4" "5" "6" "7" "8" "9"];
          };
          "format-icons"= {
            "1"= "";
            "2"= "";
            "3"= "";
            "4"= "";
            "urgent"= "";
            "focused"= "";
            "default"= "";
          };
        };
        "idle_inhibitor" = {
          "format" = "{icon}";
          "format-icons" = {
            "activated" = "";
            "deactivated" = "";
          };
          "timeout" = "200.5";
        };
        "clock" = {
          "format" = "{:%I:%M}";
          "format-alt" = "{:%m-%d-%Y}";
          "tooltip-format" = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        };
        "battery" = {
          "bat" = "BAT0";
          "adapter" = "AC";
          "full-at" = "96";
          "states" = {
            "good" = "85";
            "warning" = "30";
            "critical" = "25";
          };
          "format" = "{capacity}%";
        };
        "battery#bat0" = {
          "bat" = "BAT0";
        };
        "network" = {
          "format-wifi" = "{signalStrength}% ";
          "tooltip-format" = "{ifname} via {gwaddr} ";
          "format-linked" = "{ifname} (No IP) ";
          "format-disconnected" = "Disconnected ⚠";
          "format-alt" = "{ifname}: {ipaddr}/{cidr}";
        };
        "tray" = {
          "icon-size" = 18;
          "spacing" = 10;
        };
        "custom/vpn" = {
          "format" = "{}";
          "exec" = "~/.config/waybar/vpn.sh";
          "exec-if" = "test -S /run/mullvad-vpn";
          "interval" = "10";
        };
        "wireplumber" = {
          "format" = "{volume}% {icon}";
          "format-muted" = "";
          "on-click" = "helvum";
          "max-volume" = 150;
          "scroll-step" = 0.2;
          "format-icons" = ["" "" ""];
        };
      };
    };

    style =''

      * {
          font-family: "FiraCode Nerd Font Propo",FontAwesome;
          font-size: 18px;
          border-radius: 0;
      }

      window#waybar {
          border-bottom: 0px solid rgba(100, 114, 125, 0.5);
          /*background: transparent;*/
          background: #21242c;
          transition-property: background-color;
          transition-duration: .5s;
      }

      tooltip {
        background: #21242c;
        border: 1px solid rgba(100, 114, 125, 0.5);
      }

      tooltip label {
        color: #bbc2cf;
        font-family: "NotoSans Nerd Font SemiBold";
        font-size: 12px;
      }

      window#waybar.hidden {
          opacity: 0.6;
      }

      button {
          box-shadow: inset 0 -2px transparent;
          border: none;
          border-radius: 1;
          padding: 0 5px;
      }

      button:hover {
          background: inherit;
          box-shadow: inset 0 -2px #ffffff;
      }

      #pulseaudio:hover {
          background: rgba(0, 0, 0, 0.2);
      }

      #workspaces button {
          padding: 2px 5px;
          margin: 0 0px;
          /*background-color: #21242c;
          color: #81908f;*/
      }

      #workspaces button.persistent {
          background-color: #21242c;
          color: #C678DD;
      }

      #workspaces button.empty {
          background-color: #21242c;
          color: #4F5666;
      }

      #workspaces button.active{
          background-color: #c678dd;
          color: #21242c;
          /*box-shadow: inset 0 -2px #21242c;*/
      } 

      #workspaces button.urgent {
          background-color: #eb4d4b;
      }

      #workspaces button:hover {
          background: rgba(0, 0, 0, 0.2);
          color: #abb2bf;
      }

      #idle_inhibitor {
          background-color: #21242c;
          color: #c4c4c4;
          padding: 2px 8px;
      }

      #idle_inhibitor.activated {
          background-color: #ABB2BF;
          color: #21242c;
          padding: 2px 8px;
      }

      #custom-vpn {
          background-color: #21242c;
          color: #ABB2BF;
          padding: 2px 8px;
          margin: 0 0px;
      }
      #network {
          background-color: #21242c;
          color: #c4c4c4;
          padding: 2px 8px;
      }

      #network.disconnected {
          background-color: #f53c3c;
          padding: 2px 5px;
      }
      label:focus {
          background-color: #21242c;
      }

      #pulseaudio.muted {
          background-color: #c4c4c4;
          color: #21242c;
          padding: 2px 5px;
      }

      #pulseaudio {
          background-color: #21242c;
          color: #c4c4c4;
      }

      #wireplumber {
          background-color: #21242c;
          color: #ABB2BF;
          padding: 2px 5px;
      }

      #wireplumber.muted {
          background-color: #e06c75;
          padding: 2px 8px;
      }

      #tray {
          background-color: #21242c;
          padding: 2px 5px;
      }

      #tray > .passive {
          -gtk-icon-effect: dim;
      }

      #tray > .needs-attention {
          -gtk-icon-effect: highlight;
          background-color: #e06c75;
      }

      #backlight {
          background-color: #21242c;
          padding: 2px 5px;
      }

      #battery {
          background-color: #21242c;
          color: #ABB2BF;
          padding: 2px 5px;
      }

      #battery.charging, #battery.plugged {
          background-color: #ABB2BF;
          color: #21242c;
          padding: 2px 5px;
      }

      @keyframes blink {
          to {
              background-color: #c4c4c4;
              color: #21242c;
              padding: 2px 5px;
          }
      }

      #battery.critical:not(.charging) {
          background-color: #e06c75;
          color: #ffffff;
          padding: 2px 5px;
          animation-name: blink;
          animation-duration: 0.5s;
          animation-timing-function: steps(12);
          animation-iteration-count: infinite;
          animation-direction: alternate;
      }

      #clock {
          background-color: #21242c;
          color: #ABB2BF;
          padding: 2px 8px;
      }
    '';
  };
}
