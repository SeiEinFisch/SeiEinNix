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
        ];
        style = ''
          button {
            background-repeat: no-repeat;
            background-position: center;
            background-size = 25%;
            border-style:solid;
            background-color: rgba(30,30,36,0,1)
            border: 3px solid #ffffff
            box-shadow: none
            margin: 5px;
            font-size = 20px;
            color: #cdd6f4;
          }

          button:hover {
            background-color: rgba(49,50,68,0.2);
          }
          button:focus {
            background-color: #cba6f7;
            color: #11111b;
          }
        '';
        
    };
}