{pkgs,config,...}:
{
  imports = [
    ./bootloader
    ./gnome
    ./hyprland
    ./locale
    ./networking
    ./packages
    ./sound
  ];

  #zsh shell for all users
  users.defaultUserShell = pkgs.zsh;
  #enviroment.shells = with pkgs; [zsh];
  programs.zsh.enable = true;
  #services.fprintd.enable = true;
  #services.fprintd.tod.enable = true;
  #tod.driver = pkgs.libfprint-2-tod1-goodix-550a;
}