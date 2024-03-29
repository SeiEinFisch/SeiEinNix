{pkgs,config,...}:
{   
    programs.kitty.enable = true;
    programs.kitty.settings = {
        colors = with; config.colorScheme.colors; {
            foreground = "0x${base06}";
            background = "0x${base00}";
            background_opacity = "0.8";
            
        }
    }
}