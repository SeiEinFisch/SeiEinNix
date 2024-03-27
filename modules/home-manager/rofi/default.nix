{lib, config, pkgs,...}:
{
   programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    extraConfig = {
        modi = "run,drun,filebrowser";
        icon-theme = "Oranchelo";
        show-icons = true;
        drun-display-format = "{icon} {name}";
        location = 0;
        hide-scrollbar = true;
        display-drun = "Apps";
        display-run = "Run";
        display-filebrowser = " FileBrowser";
        sidebar-mode = true;
    };
    theme = ./theme.rafi;
   };

}