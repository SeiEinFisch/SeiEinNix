{inputs,...}:
{
    imports = [inputs.hyprlock.homeManagerModules.default];
    programs.hyprlock = {
        enable = true;
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
                    y = -80;
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