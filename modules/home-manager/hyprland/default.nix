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
      

      
      monitor = ",preferred,auto,1";

      input = {
        kb_layout = "de";
        touchpad = {
          natural_scroll = "no";
        };
      #  sensitivity = "-0.25";
      #  accel_profile = "flat";

        # follow_mouse = "2";
      };

      # device = {
      #   "elan1300:00-04f3:3057-touchpad".enabled = "false";
      # };

    

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
        ", print, exec, grim - | wl-copy"
        "CTRL, print, exec, grim -g \"$(slurp)\" - | wl-copy"
        "ALT, print, exec, grim -g \"$(slurp)\" - | swappy -f -"

        # colorpicker
        "$mainMod SHIFT, c, exec, hyprpicker -a"

        # obs studio pass
        "$mainMod, F6, pass, ^(com\.obsproject\.Studio)$"
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
