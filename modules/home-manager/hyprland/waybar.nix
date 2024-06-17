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
                "clock"
                "hyprland/workspaces"
            ];
            modules-center = [
                "hyprland/window"
            ];
            modules-right = [
                "pulseaudio"
                "pulseaudio/slider"
                "backlight"
                "backlight/slider"
                "cpu"
				"memory"
                "network"
				"bluetooth"
                "battery"
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
                    "1" = "[1]";
                    "2" = "[2]";
                    "3" = "[3]";
                    "4" = "[4]";
                    "5" = "[5]";
                    "6" = "[6]";
                    "7" = "[7]";
                    "8" = "[8]";
                    "9" = "[9]";
                    ##todo add icons
                    "active" = "act";
                    #"default" = " def ";
                    #"empty" = " emp ";
                };
            };
            "custom/launcher" = {
                #todo add nixos icon
                "format" = " ";
                "tooltip" = false;
            };
            "pulseaudio" = {
                "scroll-step" = 5;
                "format" = "{icon} {volume}%";
                "format-muted" = "󰖁 Muted";
                "format-icons" = {
                    "default" = [ "" "" "" ];
                };
                "on-click" = "pamixer -t";
                "tooltip" = false;
            };
            "pulseaudio/slider" = {
                "min" = "0";
                "max" = "100";
                "orientation" = "vertical";
            };
            "backlight/slider" = {
                "min" = "0";
                "max" = "100";
                "orientation" = "vertical";
            };
            "bluetooth" = {
			    "format-off"= "bt off";
				"on-click" = "blueman &";
				"format"= "bt on";
	            "format-connected"= "bt connected";
            };
            "clock" = {
                "interval" = 1;
                "format" = "{:%I:%M %p  %A %b %d}";
                "tooltip" = true;
                "tooltip-format" = "{=%A; %d %B %Y}\n<tt>{calendar}</tt>";
            };
            "memory" = {
                "interval" = 1;
                "format" = "memory {percentage}%";
                "states" = {
                "warning" = 85;
                };
            };
            "cpu" = {
                "interval" = 1;
                "format" = "cpu {usage}%";
            };
            "battery" = {
              "format" = "{capacity} %";  
            };
            "network" = {
                "format-disconnected" = "no wifi ";
                "format-ethernet" = "eth ";
                "format-linked" = "wifi {essid}";
                "format-wifi" = "wifi";
                #"on-click"= "~/.config/waybar/scripts/rofi-network-manager.sh";
                "interval" = 1;
            };
            "custom/powermenu" = {
                "format" = "powermenu";
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