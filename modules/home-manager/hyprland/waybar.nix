{config,...}:
{
    
    programs.waybar = with config.colorScheme.palette;{
    enable = true;
    style = ''
    * {
      font-family: "FiraCode Nerd Font";
      font-size: 18;
    }
    window#waybar {
      opacity: 0.9;
      border-radius: 24;
    }
    .modules-right {
      padding: 4px;
    }
    .modules-right > * {
      background: #181926;
      border-radius: 6px;
    }
    .modules-right > * > * {
      padding: 0em 1em 0em 0.5em;
      margin: 2px;
    }
    .modules-right > *:first-child{
      border-radius: 20px 6px 6px 20px;
    }
    .modules-right > *:last-child {
      border-radius: 6px 20px 20px 6px;
    }

    #custom-rofi {
      background: #8aadf4;
      color: #24273a;
      border-radius: 24px;
      border-color: #24273a;
      border: 4px solid;
      padding: 0 1em 0 0.5em;
      font-size: 30;
    }
    #workspaces button.active, #taskbar button.active {
      background: #8aadf4;
      color: #24273a;
      border-radius: 10px;
      border-color: #24273a;
      border: 4px solid;
    }

    '';
    settings =  {
      mainBar = {
        layer = "top";
        position = "top";
        margin = "4px";
        height = 40;
        spacing = 2;
        modules-left = [ "custom/rofi" "hyprland/workspaces" "wlr/taskbar"];
        modules-center = [ "hyprland/window" "mpris" ];
        modules-right = [  "tray" "bluetooth" "network" "wireplumber" "battery" "backlight" "custom/exit" "clock"];
      
        "hyprland/workspaces" = {
          format = "{icon}";
        };
        
        "wlr/taskbar" = {
          on-click = "activate";
          icon-size = 18;
        };
        "custom/rofi" = {
          format = "";
          on-click = "rofi -show run";
        };
        "custom/vpn" = {
          format = "{icon}";
          tooltip-format = "{}";
          format-icons = ["" ""];
          exec = ''
            systemctl list-units openvpn-* --output json | jq --unbuffered --compact-output '{percentage: (if length > 0 then 100 else 0 end), text: (.[].unit // "none") | sub("^openvpn-";"") | sub(".service"; "")}'
          '';
          return-type = "json";
          interval = 15;
        };
        clock = {
          interval = 1;
          format = "{:%H:%M %b %d}";
          tooltip = true;
          tooltip-format = "{:%A; %d %B %Y}\n<tt>{calendar}</tt>";
          timezone = "Europe/Berlin";
          
        };
        wireplumber = {
          format = "{volume}% {icon}";
          tooltip-format = "{node_name} {volume}%";
          format-muted = "󰝟";
          format-icons = ["" "" ""];
          on-click = "pavucontrol";
          on-click-right = "qpwgraph";
        };
        network = {
          on-click = "nm-connection-editor";
          format-icons = ["󰤯" "󰤯" "󰤟" "󰤢" "󰤨"];
          tooltip-format-wifi = "{essid}";
          format-wifi = "{icon}";
          format-disconnected = "󰤮";
          format-ethernet = "󰛳";
          format-linked = "󰲊";
        };
        bluetooth = {
          format-connected = "󰂰";
          format-on = "󰂯";
          format-off="󰂲";
          on-click = "blueman-manager";
          tooltip-format-connected = "{device_enumerate}";
          tooltip-device-enumerate-connected = "{device_alias}";
        };
        battery = {
          states = {
            good = 95;
            warning = 20;
            critical = 10;
          };
          format = "{capacity}% {icon}";
          tooltip-format = "{capacity}%";
          format-charging = "{capacity}% {icon}󱐋";
          format-icons = ["󰂃" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󱟢"];
        };
        backlight = {
          format = "󰍹";
          tooltip-format="{percent}%";
          format-icons = ["󰃜" "󰃛" "󰃚"  "󰃞" "󰃟" "󰃝" "󰃠"];
        };
        tray = {
            icon-size = 15;
            spacing = 5;
          };
        "group/group-power" = {
          orientation = "inherit";
          drawer = {
            transition-duration = 500;
            transition-left-to-right = false;
          };
          modules = [
            "custom/power"
            "custom/quit"
            "custom/lock"
            "custom/reboot"
          ];
        };
        "custom/quit" = {
          format = "󰗼";
          on-click = "rofi-power-menu";
          tooltip = false;
        };
        "custom/lock" = {
          format = "󰍁";
          #on-click = "${pkgs.hyprlock}";
          tooltip = false;
        };
        "custom/reboot" = {
          format = "󰜉";
          #on-click = "${pkgs.systemd}/bin/systemctl reboot";
          tooltip = false;
        };
        "custom/power" = {
          format = "";
          #on-click = "${pkgs.systemd}/bin/systemctl poweroff";
          tooltip = false;
        };
        "custom/exit" = {
          tooltip = false;
          format = "";
          on-click = "sleep 0.1 &&wlogout";
        };
      };
    };
  };
}