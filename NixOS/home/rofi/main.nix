{...}:

{
  imports = [
  #  ./power.nix
    ./theme.nix
  ];
  
  home-manager.users.Sk7Str1p3 = {
    programs.rofi = {
      enable = true;
      cycle = true;
      terminal = "kitty";
      extraConfig = {
        modi = "run,drun,window";
	icon-theme = "Papirus-Dark";
	show-icons = true;
	drun-display-format = "{icon} {name}";
	disable-history = false;
	hide-scrollbar = true;
	display-drun = "   Apps ";
	display-run = "   Run ";
    	display-window = " 󰕰  Window";
    	display-Network = " 󰤨  Network";
    	sidebar-mode = true;
      };
    };
  };
}
