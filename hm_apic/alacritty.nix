{
  programs.alacritty = {
    enable = true;
    #enableBashIntegration = false;
    #enableZshIntegration = true;
    settings = {
			env.TERM = "xterm-256color";
			window.padding = {
				x = 10;
				y = 10;
			};
			window.decorations = "none";
			window.opacity = 0.7;
			scrolling.history = 1000;
			font = {
				normal = {
					family = "JetBrains Mono Nerd Font";
					style = "Regular";
				};
				bold = {
					family = "JetBrains Mono Nerd Font";
					style = "Bold";
				};
				italic = {
					family = "JetBrains Mono Nerd Font";
					style = "Italic";
				};
				size = 14;
			};
      # Color theme
      # Default colors
      colors.primary = {
        background = "#232627";
        foreground = "#fcfcfc";
        
        dim_foreground = "#eff0f1";
        bright_foreground = "#ffffff";
      };

      # Normal colors
      colors.normal = {
        black = "#232627";
        red = "#ed1515";
        green = "#11d116";
        yellow = "#f67400";
        blue = "#1d99f3";
        magenta = "#9b59b6";
        cyan = "#1abc9c";
        white = "#fcfcfc";
      };
      # Bright colors
      colors.bright = {
        black = "#7f8c8d";
        red = "#c0392b";
        green = "#1cdc9a";
        yellow = "#fdbc4b";
        blue = "#3daee9";
        magenta = "#8e44ad";
        cyan = "#16a085";
        white = "#ffffff";
      };
      # Dim colors
      colors.dim = {
        black = "#31363b";
        red = "#783228";
        green = "#17a262";
        yellow = "#b65619";
        blue = "#1b668f";
        magenta = "#614a73";
        cyan = "#186c60";
        white = "#63686d";
      };
		};
	};
}
#home.file.".config/alacritty/alacritty.toml".source = ./alacritty.toml;
