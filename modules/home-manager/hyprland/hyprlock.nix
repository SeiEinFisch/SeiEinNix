{inputs,config,...}:
{
    imports = [inputs.hyprlock.homeManagerModules.default];
    programs.hyprlock = {
        enable = true;
        backgrounds = [
            {
                #doesnt work
                monitor = "";
                path = "$HOME/SeiEinNix/modules/home-manager/hyprland/wallpaper.png";
                color = "rgba(25,20,20,1.0)";
                blur_passes = 4; # 0 disables blur
                blur_size = 2;
                noise = 0.0117;
                contrast = 0.9;
                brightness = 0.8;
                vibrancy = 0.19;
                vibrancy_darkness = 0.0;
            }
        ];
        input-fields = [
            {
                size = {
                    width = 200;
                    height = 50;
                };
                outer_color = "rgb(74,72,140)";
                inner_color = "rgb(10,10,10)";
                font_color = "rgba(200,200,200,1.0)";
                dots_size = 0.2;
                dots_spacing = 0.64;
                dots_center = true;
                position = {
                    x = 0;
                    y = -90;
                };
                halign = "center";
                valign = "center";
            }
        ];
        labels = [
            {
                monitor = "";
                text = "$TIME";
                font_size = 64;
                color = "rgba(200,200,200,1.0)";
                position = {
                    x = 0;
                    y = 90;
                };
                valign = "center";
                halign = "center";
            }
            {
                monitor = "";
                text = "Hello $USER";
                font_size = 32;
                color = "rgba(200,200,200,1.0)";
                position = {
                    x = 0;
                    y = 0;
                };
                valign = "center";
                halign = "center";
            }
        ];
    };
}