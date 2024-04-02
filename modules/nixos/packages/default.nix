{pkgs,...}:
{
# Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     gedit
     wget
     kitty
     discord
     spotify
     vscode
     tree
     neofetch
     obsidian
     maestral
     maestral-gui
     
     
     waybar
     dunst
     libnotify
     rofi-wayland
     
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];
} 