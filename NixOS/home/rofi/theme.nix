{ config, ...}:

{
  home-manager.users.Sk7Str1p3 = {
    programs.rofi = {
      theme = 
      let
        inherit (config.home-manager.users.Sk7Str1p3.lib.formats.rasi) mkLiteral;
      in 
      {
        "*" = {
          bg-col = mkLiteral "#1e1e2e";
          bg-col-light = mkLiteral "#1e1e2e";
          border-col = mkLiteral "#cba6f7";
          selected-col = mkLiteral "#1e1e2e";
          blue = mkLiteral "#cba6f7";
          fg-col = mkLiteral "#cdd6f4";
          fg-col2 = mkLiteral "#f38ba8";
          grey = mkLiteral "#6c7086";
          width = 600;
          font = "JetBrainsMono Nerd Font 14";
        };
      };
    };
  };
}
