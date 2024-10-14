{ lib, ... }:

{
  home-manager.users.Sk7Str1p3 = {
    programs.starship = {
      enable = true;
      enableFishIntegration = true;
      settings = {
        add_newline = true;
        format = lib.concatStrings [
          "[╭─](bold fg:#313244)"
          "[](bg:#1e1e2e fg:#313244)"
          "[ ](bg:#313244 fg:#cba6f7)"
          "[](fg:#313244 bg:#fab387)"
          "$directory"
          "[](fg:#fab387 bg:#a6e3a1)"
          "$git_branch"
          "$git_commit"
          "$git_status"
          "$git_metrics"
          "[](fg:#a6e3a1 bg:#94e2d5)"
          "$c"
          "$java"
          "$php"
          "$python"
          "[](bg:#89b4fa fg:#94e2d5)"
          "$status"
          "[](fg:#89b4fa bg:#cba6f7)"
          "$time"
          "[](bg:#1e1e2e fg:#cba6f7)"
          "\n[╰─](bold fg:#313244)"
          "$character"
        ];
        directory = {
          format = "[ $path ]($style)[$read_only]($read_only_style)";
          style = "bg:#fab387 fg:#313244";
          read_only = "󰉐 ";
          read_only_style = "bg:#fab387 fg:#313244";
          home_symbol = "󱂵 ";
        };
        git_branch = {
          format = "[ $symbol$branch(:$remote_branch)]($style)";
          symbol = "  ";
          style = "bg:#a6e3a1 fg:#313244";
        };
        git_status = {
          format = "[$all_status ]($style)";
          style = "bg:#a6e3a1 fg:#313244";
        };
        c = {
          symbol = " ";
          style = "bg:#94e3d5 fg:#313244";
          format = "[$symbol $name $version]($style)";
        };
        python = {
          symbol = " ";
          style = "bg:#94e3d5 fg:#313244";
          format = "[$symbol$pyenv_prefix $version (\($virtualenv\) )]($style)";
        };
        status = {
          disabled = false;
          symbol = "  ";
          success_symbol = "  ";
          not_executable_symbol = "  ";
          not_found_symbol = "  ";
          sigint_symbol = " 󱤷 ";
          signal_symbol = " 󱐋 ";
          map_symbol = true;
          style = "fg:#11111b bg:#89b4fa";
          format = "[$symbol $status ]($style)";
        };
        time = {
          disabled = false;
          time_format = "%R";
          style = "bg:#cba6f7 fg:#313244";
          format = "[ 󱑍 $time ]($style)";
        };
      };
    };
  };
}
