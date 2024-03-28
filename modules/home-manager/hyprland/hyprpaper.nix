{
    inputs,
    pkgs,
    config,
    ...
}: let
    #set initial wallpaper
    wallpaper = ./wallpaper.png;
    #define wallpaper path here
    #...
in{
    home.packages =[
        inputs.hyprpaper.packages.${pkgs.system}.hyprpaper
    ];
    # adding other wallpaper here with path

    #config hyprpaper
    #home.file."${config.home.homeDirectory}/.config/hypr/hyprpaper.conf".text = ''
        
    #'';

}