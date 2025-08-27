{ pkgs, ... }:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      grub = {
        enable = true;
        default = "saved";
        devices = ["nodev"];
        efiSupport = true;
        # useOSProber = true;
        extraEntries = ''
          menuentry "Gentoo" {
            search --no-floppy --set=root --fs-uuid e4b51fa5-13e0-4a21-bfab-996cd14a4514
            configfile "($root)/boot/grub/grub.cfg"
        }
        '';
      };
      efi.canTouchEfiVariables = true;
    };
  };
}
