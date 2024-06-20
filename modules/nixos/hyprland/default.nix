{pkgs,config,inputs,...}:
{
    
    programs.hyprland.enable = true;
    programs.hyprland.xwayland.enable = true;
    programs.hyprland.package = inputs.hyprland.packages."${pkgs.system}".hyprland;

    xdg.portal = {
        enable = true;
        wlr.enable = true;
        xdgOpenUsePortal = true;
        #extraPortals = [
            #pkgs.xdg-desktop-portal-hyprland
            #pkgs.xdg-desktop-portal-gtk
        #];
    };
}
