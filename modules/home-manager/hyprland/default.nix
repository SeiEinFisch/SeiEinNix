{
  pkgs,
  config,
  inputs,
  ...
}: {
  imports = [
    ./hyprlock.nix
    ./waybar.nix
    ./hyprpaper.nix
  #  ./hyprpicker.nix
  ];

  #home.packages = with pkgs; [
  #  # screen capturing
  #  grim
  #  slurp
  #  imagemagick
  #  swappy

    # clipboard
  #  wl-clipboard

    # brightness control
  #  brightnessctl
  #];
  

  wayland.windowManager.hyprland = {
    enable = true;

    settings = with config.colorScheme.palette; {
      # default variables
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$editor" = "gedit";
      "$browser" = "firefox";
      "$launcher" = "rofi -show drun";
      "$fileManager" = "nautilus";

      exec-once = [
        "hyprpaper"
        #"ags"
        #"mako"
        "dunst"
        "waybar"
      ];
      

      #main monitor
      #monitor left position from top left corner
      # name, resolution(and frequency), position from top left corner, scale
      monitor =
        [ 
      "eDP-1,preferred,1920x0,1"
      "HDMI-A-1,preferred,0x0,1"
      
      #monitor right
      #"eDP-1,preferred,0x0,1"
      #"HDMI-A-1,preferred,1920x0,1"
        ];

      input = {
        kb_layout = "de";
        touchpad = {
          natural_scroll = "yes";
        };
        sensitivity = "-0.1";
        accel_profile = "flat";

        # follow_mouse = "2";
      };

      # device = {
      #   "elan1300:00-04f3:3057-touchpad".enabled = "false";
      # };

      general = {
        gaps_in = "4";
        gaps_out = "8";

        layout = "dwindle";
      };
      
      decoration = {
        rounding = "8";
        drop_shadow = "false";

        blur = {
          enabled = "true";
          size = "8";
          passes = "4";
          popups = "true";
          };
      };

      bind = [
        # apps
        "$mainMod, t, exec, $terminal"
        "$mainMod, f, exec, $browser"
        "$mainMod, d, exec, $launcher"
        "$mainMod, e, exec, $fileManager"
        "$mainMod, l, exec, hyprlock"
        

        # toggle floating window
        "$mainMod, v, togglefloating"

        # close active window
        "alt, f4, killactive"
        "$mainMod, q, killactive"

        # close hyprland session
        "$mainMod, m, exit"

        # move focus
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # switch workspaces
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"

        # move active window to workspace
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"

        # scroll through workspaces
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        # screenshotting
        ", PRINT, exec, grimblast copysave screen"
        "CTRL, PRINT, exec, grimblast copysave area"
        "ALT, PRINT, exec, grimblast save area - | satty -f -"
        "SHIFT, PRINT, exec, grimblast copysave active"
      
        
      ];

      bindm = [
        # move & resize windows
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      binde = [
        # pipewire volume control
        ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

        # brightness control
        #", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
        #", XF86MonBrightnessUp, exec, brightnessctl set +5%"
      ];
    };
  };
}
