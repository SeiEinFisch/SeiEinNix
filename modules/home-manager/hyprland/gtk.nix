{pkgs,config,...}:
{
    gtk = {
      enable = true;
      theme = {
        name = "Catppuccin-Macchiato-Compact-Blue-Dark";
        package = pkgs.catppuccin-gtk.override {
          accents = [ "blue" ];
          size = "compact";
          tweaks = ["rimless" ];
          variant = "macchiato";
        };
      };
    };
}