{config,...}:
{
    programs.waybar = with config.colorScheme.palette;{
        enable = true;
        #systemd = {
        #    enable = false;
        #    target = "graphical-session.target";
        #};
        settings = [{
            "layer" = "top";
            "position" = "top";

            modules-left = [
                "custom/launcher"
                "hyperland/workspaces"
            ];
            modules-center = [
                "clock"
            ];
            modules-right = [
                "pulseaudio"
                "backlight"
                "cpu"
				"memory"
                "network"
				"bluetooth"
                "custom/powermenu"
                "tray"
            ];
            "hyprland/workspaces" = {
                format = "{icon}";
                on-click = "activate";
                all-outputs = true;
                persistent_workspaces = {
                    "1" = "[]";
                    "2" = "[]";
                    "3" = "[]";
                };
                format-icons = {
                    ##todo add icons
                    "active" = "  ";
                    "default" = "  ";
                    "empty" = "  ";
                };
            };
            "custom/launcher" = {
                #todo add nixos icon
                "format" = " ";
                "tooltip" = false;
            };
            "pulseaudio" = {
                "scroll-step" = 1;
                "format" = "{icon} {volume}%";
                "format-muted" = "󰖁 Muted";
                "format-icons" = {
                    "default" = [ "" "" "" ];
                };
                "on-click" = "pamixer -t";
                "tooltip" = false;
            };
            "bluetooth" = {
			    "format-off"= "󰂲";
				"on-click" = "rofi-bluetooth &";
				"format"= "";
	        "format-connected"= "";
            };
            "clock" = {
                "interval" = 1;
                "format" = "{:%I:%M %p  %A %b %d}";
                "tooltip" = true;
                "tooltip-format" = "{=%A; %d %B %Y}\n<tt>{calendar}</tt>";
            };
            "memory" = {
                "interval" = 1;
                "format" = "󰻠 {percentage}%";
                "states" = {
                "warning" = 85;
                };
            };
            "cpu" = {
                "interval" = 1;
                "format" = "󰍛 {usage}%";
            };
            "network" = {
                "format-disconnected" = "󰯡 ";
                "format-ethernet" = "󰒢 ";
                "format-linked" = "󰖪 {essid}";
                "format-wifi" = "󰖩";
                        "on-click"= "~/.config/waybar/scripts/rofi-network-manager.sh";
                "interval" = 1;
            };
            "custom/powermenu" = {
                "format" = "";
                "on-click" = "zsh -c wlogout";
                "tooltip" = false;
            };
            "tray" = {
                "icon-size" = 15;
                "spacing" = 5;
            };
        }];
    };
}