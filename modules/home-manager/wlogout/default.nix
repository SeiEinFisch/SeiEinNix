{pkgs,config,...}:
{
    programs.wlogout = {
        enable = true;
        layout = [
            {
                label = "reboot";
                action = "sleep 1; systemctl reboot";
                text = "Reboot";
                keybind = "r";
            }
            {
                label = "shutdown";
                action = "sleep 1; systemctl poweroff";
                text = "Shutdown";
                keybind = "s";
            }
            {
                label = "lock";
                action = "sleep 1; hyprlock";
                text = "Lock";
                keybind = "l";
            }
            {
                label = "logout";
                action = "hyperctl dispatch exit";
                text = "Logout";
                keybind = "e";
            }
            {
                label = "hibernate";
                action = "sleep 1; hyprlock; systemctl hibernate";
                text = "Hibernate";
                keybind = "h";
            }
        ];
    };
}

