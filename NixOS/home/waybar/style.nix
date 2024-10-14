{ ... }:

{
  home-manager.users.Sk7Str1p3.programs.waybar = {
    enable = true;
    style = ''
      @define-color rosewater #f5e0dc;
      @define-color flamingo #f2cdcd;
      @define-color pink #f5c2e7;
      @define-color mauve #cba6f7;
      @define-color red #f38ba8;
      @define-color maroon #eba0ac;
      @define-color peach #fab387;
      @define-color yellow #f9e2af;
      @define-color green #a6e3a1;
      @define-color teal #94e2d5;
      @define-color sky #89dceb;
      @define-color sapphire #74c7ec;
      @define-color blue #89b4fa;
      @define-color lavender #b4befe;
      @define-color text #cdd6f4;
      @define-color subtext1 #bac2de;
      @define-color subtext0 #a6adc8;
      @define-color overlay2 #9399b2;
      @define-color overlay1 #7f849c;
      @define-color overlay0 #6c7086;
      @define-color surface2 #585b70;
      @define-color surface1 #45475a;
      @define-color surface0 #313244;
      @define-color base #1e1e2e;
      @define-color mantle #181825;
      @define-color crust #11111b;

      * {
        font-family: jetbrainsmono nerd font propo;
        font-size: 16px;
      }

      window#waybar {
        background: alpha(@base, 0.3);
        color: alpha(@mauve, 0.8);
        border: 2px solid @mauve;
        border-radius: 50px;
        transition-property: background-color;
        transition-duration: .6s;
      }
      window#waybar.empty {
        background-color: transparent;
      }


      #custom-run {
        background: @mauve;
        border-radius: 50px;
        color: @base;
        padding-left: 20px;
        padding-right: 5px;
        font-size: 24px;
      }
      #workspaces {
        background: alpha(#343451, 0.5);
        margin-top: 6px;
        margin-bottom: 6px;
        padding: 0px 1px;
        border-radius: 15px;
        border: 0px;
        font-weight: bold;
        font-style: normal;
        opacity: 0.8;
        font-size: 16px;
        color: @textcolor1;
      }
      #workspaces button {
        padding: 0px 5px;
        margin: 4px 3px;
        border-radius: 15px;
        border: 0px;
        color: @mauve;
        background-color: alpha(@base, 0.3);
        transition: all 0.3s ease-in-out;
        opacity: 1.0;
      }
      #workspaces button.active {
        color: @base;
        background: @mauve;
        border-radius: 15px;
        min-width: 40px;
        transition: all 0.3s ease-in-out;
        opacity:1.0;
      }


      #clock {
        background: alpha(#343451, 0.5);
        font-weight: bold;
        margin-top: 6px;
        margin-bottom: 6px;
        padding-right: 10px;
        padding-left: 20px;
        border-radius: 50px 20px 20px 50px;
      }
      #clock.2 {
        background: alpha(#343451, 0.5);
        font-weight: bold;
        margin-top: 6px;
        margin-bottom: 6px;
        padding-left: 10px;
        padding-right: 20px;
        border-radius: 20px 50px 50px 20px;
      }
      #custom-notify {
        background: alpha(#343451, 0.5);
        margin-bottom: 6px;
        margin-top: 6px;
        padding-left: 20px;
        padding-right: 20px;
        border-radius: 50px;
      }



      #custom-updicon {
        background: alpha(#343451, 0.5);
        margin-top: 6px;
        margin-bottom: 6px;
        padding-right: 10px;
        padding-left: 20px;
        border-radius: 50px 20px 20px 50px;
      }
      #custom-upd {
        background: alpha(#343451, 0.5);
        margin-top: 6px;
        margin-bottom: 6px;
        padding-right: 15px;
        padding-left: 10px;
        border-radius: 20px 50px 50px 20px;
      }
      #network {
        background: alpha(#343451, 0.5);
        margin-top: 6px;
        margin-bottom: 6px;
        padding-left: 20px;
        padding-right: 10px;
        border-radius: 50px 20px 20px 50px;
      }
      #network.2 {
        border-radius: 20px 50px 50px 20px;
        padding-left: 10px;
        padding-right: 20px;
      }
      #custom-langicon {
        background: @mauve;
        color: @base;
        margin-top: 6px;
        margin-bottom: 6px;
        padding-right: 10px;
        padding-left: 15px;
        border-radius: 50px 20px 20px 50px;
      }
      #language {
        background: @mauve;
        color: @base;
        margin-bottom: 6px;
        margin-top: 6px;
        padding-left: 10px;
        padding-right: 15px;
        border-radius: 20px 50px 50px 20px;
      }
      #wireplumber {
        background: alpha(#343451, 0.5);
        margin-top: 6px;
        margin-bottom: 6px;
        padding-left: 15px;
        padding-right: 10px;
        border-radius: 50px 20px 20px 50px;
      }
      #wireplumber.2 {
        border-radius: 20px 50px 50px 20px;
        margin-bottom: 6px;
        margin-top: 6px;
        padding-left: 10px;
        padding-right: 15px;
      }
      #custom-power {
        background: @mauve;
        border-radius: 50px;
        color: @base;
      }
    '';
  };
}
