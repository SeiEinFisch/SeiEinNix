{inputs,config,pkgs, ...}:
{
    #theming
    home.pointerCursor = {
        name = "BreezeX-RosePine-Linux";
        package = pkgs.rose-pine.cursor;
        gtk.enable = true;
    };
    gtk = {
        enable = true;
        theme.name = "rose-pine";
        theme.package = pkgs.rose-pine-gtk-theme;
        iconTheme.name = "rose-pine";
        iconTheme.package = pkgs.rose-pine-icon-theme;
    };
}