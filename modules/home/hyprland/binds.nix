{host, ...}: let
  inherit
    (import ../../../hosts/${host}/variables.nix)
    browser
    terminal
    ;
in {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$modifier SHIFT,L,exec,hyprlock"
      "$modifier,Return,exec,${terminal}"
      "$modifier,K,exec,list-keybinds"
      "$modifier ,D,exec,rofi-launcher"
      "$modifier SHIFT,Z,exec,web-search"
      "$modifier ALT,W,exec,wallsetter"
      "$modifier SHIFT,N,exec,swaync-client -rs"
      "$modifier,Z,exec,${browser}"
      "$modifier,E,exec,kitty -e yazi"
      ",Print,exec,screenshootin"
      "$modifier,O,exec,obs"
      "$modifier,C,exec,hyprpicker -a"
      "$modifier,G,exec,gimp"
      "$modifier,T,exec,pypr toggle term"
      "$modifier,M,exec,pavucontrol"
      "$modifier,Q,killactive,"
      "$modifier,P,pseudo,"
      "$modifier,V,exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"
      "$modifier SHIFT,I,togglesplit,"
      "$modifier,F,fullscreen,"
      "$modifier SHIFT,F,togglefloating,"
      "$modifier ALT,F,workspaceopt, allfloat"
      "$modifier SHIFT,C,exit,"
      "$modifier SHIFT,left,movewindow,l"
      "$modifier SHIFT,right,movewindow,r"
      "$modifier SHIFT,up,movewindow,u"
      "$modifier SHIFT,down,movewindow,d"
      "$modifier SHIFT,h,movewindow,l"
      "$modifier SHIFT,l,movewindow,r"
      "$modifier SHIFT,k,movewindow,u"
      "$modifier SHIFT,j,movewindow,d"
      "$modifier ALT, left, swapwindow,l"
      "$modifier ALT, right, swapwindow,r"
      "$modifier ALT, up, swapwindow,u"
      "$modifier ALT, down, swapwindow,d"
      "$modifier ALT, 43, swapwindow,l"
      "$modifier ALT, 46, swapwindow,r"
      "$modifier ALT, 45, swapwindow,u"
      "$modifier ALT, 44, swapwindow,d"
      "$modifier,left,movefocus,l"
      "$modifier,right,movefocus,r"
      "$modifier,up,movefocus,u"
      "$modifier,down,movefocus,d"
      "$modifier,h,movefocus,l"
      "$modifier,l,movefocus,r"
      "$modifier,k,movefocus,u"
      "$modifier,j,movefocus,d"
      "$modifier,1,workspace,1"
      "$modifier,2,workspace,2"
      "$modifier,3,workspace,3"
      "$modifier,4,workspace,4"
      "$modifier,5,workspace,5"
      "$modifier,6,workspace,6"
      "$modifier,7,workspace,7"
      "$modifier,8,workspace,8"
      "$modifier,9,workspace,9"
      "$modifier,0,workspace,10"
      "$modifier SHIFT,SPACE,movetoworkspace,special"
      "$modifier,SPACE,togglespecialworkspace"
      "$modifier SHIFT,1,movetoworkspace,1"
      "$modifier SHIFT,2,movetoworkspace,2"
      "$modifier SHIFT,3,movetoworkspace,3"
      "$modifier SHIFT,4,movetoworkspace,4"
      "$modifier SHIFT,5,movetoworkspace,5"
      "$modifier SHIFT,6,movetoworkspace,6"
      "$modifier SHIFT,7,movetoworkspace,7"
      "$modifier SHIFT,8,movetoworkspace,8"
      "$modifier SHIFT,9,movetoworkspace,9"
      "$modifier SHIFT,0,movetoworkspace,10"

      "$modifier,KP_1,movetoworkspace,1" # Numpad 1
      "$modifier,KP_2,movetoworkspace,2" # Numpad 2
      "$modifier,KP_3,movetoworkspace,3" # Numpad 3
      "$modifier,KP_4,movetoworkspace,4" # Numpad 4
      "$modifier,KP_5,movetoworkspace,5" # Numpad 5
      "$modifier,KP_6,movetoworkspace,6" # Numpad 6
      "$modifier,KP_7,movetoworkspace,7" # Numpad 7
      "$modifier,KP_8,movetoworkspace,8" # Numpad 8
      "$modifier,KP_9,movetoworkspace,9" # Numpad 9
      "$modifier,KP_0,movetoworkspace,10" # Numpad 0

      "$modifier SHIFT,KP_1,movetoworkspace,1" # Numpad 1
      "$modifier SHIFT,KP_2,movetoworkspace,2" # Numpad 2
      "$modifier SHIFT,KP_3,movetoworkspace,3" # Numpad 3
      "$modifier SHIFT,KP_4,movetoworkspace,4" # Numpad 4
      "$modifier SHIFT,KP_5,movetoworkspace,5" # Numpad 5
      "$modifier SHIFT,KP_6,movetoworkspace,6" # Numpad 6
      "$modifier SHIFT,KP_7,movetoworkspace,7" # Numpad 7
      "$modifier SHIFT,KP_8,movetoworkspace,8" # Numpad 8
      "$modifier SHIFT,KP_9,movetoworkspace,9" # Numpad 9
      "$modifier SHIFT,KP_0,movetoworkspace,10" # Numpad 0

      "$modifier CONTROL,right,workspace,e+1"
      "$modifier CONTROL,left,workspace,e-1"
      "$modifier,mouse_down,workspace, e+1"
      "$modifier,mouse_up,workspace, e-1"
      "ALT,Tab,cyclenext"
      "ALT,Tab,bringactivetotop"
      ",XF86AudioRaiseVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      " ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioPlay, exec, playerctl play-pause"
      ",XF86AudioPause, exec, playerctl play-pause"
      ",XF86AudioNext, exec, playerctl next"
      ",XF86AudioPrev, exec, playerctl previous"
      ",XF86MonBrightnessDown,exec,brightnessctl set 5%-"
      ",XF86MonBrightnessUp,exec,brightnessctl set +5%"
    ];

    bindm = [
      "$modifier, mouse:272, movewindow"
      "$modifier, mouse:273, resizewindow"
    ];
  };
}
