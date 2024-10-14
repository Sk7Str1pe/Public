{ ... }:

{
  imports = [
    ./style.nix
  ];
  home-manager.users.Sk7Str1p3.programs.waybar = {
    enable = true;
    settings.conf = {
      layer = "bottom";
      position = "top";
      margin-top = 10;
      height = 40;
      width = 1860;
      spacing = 4;

      modules-left = [
        "custom/run"
        "hyprland/workspaces"
        "tray"
        "cava"
      ];
      modules-center = [
        "clock"
        "clock#2"
        "custom/notify"
      ];
      modules-right = [
        "custom/updicon"
        "custom/upd"
        "network"
        "network#2"
        "custom/langicon"
        "hyprland/language"
        "wireplumber"
        "wireplumber#2"
        "custom/power"
      ];

      "custom/run" = {
        format = "   ";
        tooltip = false;
        on-click = "rofi -show drun";
      };
      "hyprland/workspaces" = {
        format = "{icon}";
        on-scroll-up = "hyprctl dispatch workspace r-1";
        on-scroll-down = "hyprctl dispatch workspace r+1";
        on-click = "activate";
        format-icons = {
          urgent = "";
          "1" = "Ⅰ";
          "2" = "Ⅱ";
          "3" = "Ⅲ";
          "4" = "Ⅳ";
          "5" = "Ⅴ";
          "6" = "Ⅵ";
          "7" = "Ⅶ";
          "8" = "Ⅷ";
          "9" = "Ⅸ";
          "10" = "Ⅹ";
        };
        tooltip = false;
        active-only = false;
        persistent-workspaces = {
          "*" = 5;
        };
      };
      "tray" = {
        spacing = 20;
        icon-size = 25;
      };
      "cava" =
        {
        };
      "clock" = {
        format = "{:%R}";
        on-click = "gnome-clocks";
        tooltip = false;
      };
      "clock#2" = {
        format = "{:%A, %b %d %Y}";
        on-click = "gnome-calendar";
        tooltip = false;
      };
      "custom/notify" = { };
      "custom/updicon" = { };
      "custom/upd" = { };
      "network" = {
        format = "{ifname}";
        format-wifi = "{icon}";
        format-ethernet = "󰌘 ";
        format-disconnected = "󰌙 ";
        tooltip-format = false;
        tooltip-format-wifi = " {bandwidthUpBytes} |  {bandwidthDownBytes}";
        tooltip-format-disconnected = "Disconnected";
        tooltip-format-ethernet = "{ifname} 󰌘 ";
        max-length = 50;
        format-icons = [
          "󰤯"
          "󰤟"
          "󰤢"
          "󰤥"
          "󰤨"
        ];
        on-click = "iwgtk";
      };
      "network#2" = {
        format = "{ifname}";
        format-wifi = "{essid}";
        format-ethernet = "{ipaddr}/{cidr}";
        format-disconnected = "none";
        tooltip-format = false;
        tooltip-format-wifi = " {bandwidthUpBytes} |  {bandwidthDownBytes}";
        tooltip-format-ethernet = " {bandwidthUpBytes} |  {bandwidthDownBytes}";
        tooltip-format-disconnected = "NOT CONNECTED DAMMIT";
        on-click = "iwgtk";
      };
      "custom/langicon" = {
        format = "";
        on-click = "hyprctl switchxkblayout gaming-kb-gaming-kb prev"; # KB NAME HARDCODED, YOU SUPPOSED TO CHANGE IT (check all devices with hyprctl devices)
        on-scroll-up = "hyprctl switchxkblayout gaming-kb-gaming-kb next";
        on-scroll-down = "hyprctl switchxkblayout gaming-kb-gaming-kb prev";
        tooltip = false;
      };
      "hyprland/language" = {
        format = "{short}";
        on-scroll-up = "hyprctl switchxkblayout gaming-kb-gaming-kb prev";
        on-scroll-down = "hyprctl switchxkblayout gaming-kb-gaming-kb prev";
        on-click = "hyprctl switchxkblayout gaming-kb-gaming-kb prev";
      };
      "wireplumber" = {
        format = "{icon}";
        format-muted = "";
        max-volume = 150;
        scroll-step = 5;
        format-icons = {
          default = [
            ""
            ""
          ];
        };
        on-click-right = "wpctl set-mute @DEFAULT_SINK@ toggle";
      };
      "wireplumber#2" = {
        format = "{volume}%";
        format-muted = "muted";
        max-volume = 150;
        scroll-step = 5;
        on-click-right = "wpctl set-mute @DEFAULT_SINK@ toggle";
      };
      "custom/power" = {
        format = "  ⏻  ";
        tooltip = false;
        on-click = "";
      };
    };
  };
}
