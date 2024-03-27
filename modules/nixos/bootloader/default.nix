{pkgs,...}:

{
  # Bootloader.
  # boot.loader.systemd-boot.enable = true;
  boot.loader.grub = {
    enable = true;
    efiSupport= true;
    device = "nodev";
    #useOSProber = true;
    
  };

  boot.loader.efi = {
    canTouchEfiVariables = true;
    efiSysMountPoint ="/boot";
  };
  
}