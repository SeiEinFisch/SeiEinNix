{config,...}:
{
    gtk = {
      enable = true;
      theme = {
        name = "Catppuccin-Macchiato";
        package = pkgs.catppuccin-gtk.override {
          accents = [ "pink" ];
          size = "compact";
          tweaks = ["rimless" ];
          variant = "macchiato";
        };
      };
    };
}