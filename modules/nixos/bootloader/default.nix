{...}:

{
  # Bootloader.
  # boot.loader.systemd-boot.enable = true;
  boot.loader.grub.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint ="/boot";
  boot.loader.grub.efiSupport= true;
  boot.loader.grub.device = "nodev";
  #boot.loader.grub.useOSProber = true;
}