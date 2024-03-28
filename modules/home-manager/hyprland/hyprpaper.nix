{
    inputs,
    pkgs,
    config,
    ...
}: let
    #set initial wallpaper
    wallpaper = ./wallpaper.png;
    #define wallpaper path here
    wallpaperPath = "${config.home.homeDirectory}/.local/share/hyprpaper/${builtins.baseNameOf wallpaper}";
in{
    home.packages =[
        inputs.hyprpaper.packages.${pkgs.system}.hyprpaper
    ];
    
    # adding other wallpaper here with path
    home.file.${wallpaperPath}.source = wallpaper;
    #config hyprpaper
    home.file."${config.home.homeDirectory}/.config/hypr/hyprpaper.conf".text = ''
      preload = ${wallpaperPath}
      wallpaper = , ${wallpaperPath}    
    '';

}