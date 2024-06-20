{pkgs,...}:
{
# Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     # Mostly console commandsc and similar
     gedit
     wget
     kitty
     tree
     neofetch
     #fastfetch
     util-linux
     cliphist
     # applications
     discord
     #spotify
     vscode
     obsidian
     maestral
     maestral-gui
     libreoffice-qt
     ungoogled-chromium
     floorp
     vlc
     # DM stuff
     hypridle
     waybar
     dunst
     libnotify
     rofi-wayland
     rofi-power-menu
     networkmanagerapplet
     wl-clipboard
     swww
     brightnessctl
     helvum
     pavucontrol
     wlogout
     ags
     # Customization
     nerdfonts fira-code-nerdfont
     
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