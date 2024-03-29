{pkgs,config,...}:
{   
    programs.kitty.enable = true;
    programs.kitty.settings = {
        
        #foreground = "0x${config.colorScheme.colors.base06}";        
        #background = "0x${config.colorScheme.colors.base00}";
        background_opacity = "0.8";
    
            
    };
}