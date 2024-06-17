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
     libreoffice-qt
     ungoogled-chromium
     floorp
     fastfetch
     util-linux
     #fprintd
     #libfprint-2-tod1-goodix-550a
     hypridle
     waybar
     dunst
     libnotify
     rofi-wayland
     
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];
  services.fprintd.package = pkgs.fprintd.overrideAttrs {
  mesonCheckFlags = [
    "--no-suite"
    "fprintd:TestPamFprintd"
  ];
};
} 