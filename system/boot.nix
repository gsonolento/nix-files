l{ config, ... }:

{
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = true;
  hardware.enableRedistributableFirmware = true;
 hardware.cpu.intel.updateMicrocode = true;

  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev";
  };
}
