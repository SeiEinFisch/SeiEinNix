{pkgs,...}:
{
    programs.fastfetch = {
        enable = true;

        settings = {
            logo = {
                type = "kitty-direct";
                source = "~/Downloads/Elaina.jpg";
                widht = 32;
                height = 15;
            };
            display = {
                seperator = " - ";
                color = "blue";
            };
            modules = [
                {
                    type = "datetime";
                    key = "Date";
                    format = "{1}-{3}-{11}";
                }
                {
                    type = "datetime";
                    key = "Time";
                    format = "{14}:{17}:{20}";
                }
                "host"
                "os"
                "kernel"
                "processes"
                "uptime"
                "de"
                "wm"
                "break"
                "icons"
                "theme"
                "shell"
                "terminal"
                "break"
                "locale"
                "media"
                "break"
                "colors"

            
            ]
        };
    };
}