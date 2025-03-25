# Color file for Hyprland
# found here : https://github.com/tinted-theming/base16-schemes

# 3024 scheme for the Base16 Builder (https://github.com/chriskempson/base16-builder)
let
  base16."3024" =       
    {
      base00 = "19171c";
      base01 = "26232a";
      base02 = "585260";
      base03 = "655f6d";
      base04 = "7e7887";
      base05 = "8b8792";
      base06 = "e2dfe7";
      base07 = "efecf4";
      base08 = "be4678";
      base09 = "aa573c";
      base0A = "a06e3b";
      base0B = "2a9292";
      base0C = "398bc6";
      base0D = "576ddb";
      base0E = "955ae7";
      base0F = "bf40bf";
    };

  # unkown one...
  base16.unknown =
    { 

      base00= "090300"; #  ----
      base01= "3a3432"; #  ---
      base02= "4a4543"; #  --
      base03= "5c5855"; #  -
      base04= "807d7c"; #  +
      base05= "a5a2a2"; #  ++
      base06= "d6d5d4"; #  +++
      base07= "f7f7f7"; #  ++++
      base08= "db2d20"; #	red
      base09= "e8bbd0"; #	orange
      base0A= "fded02"; #	yellow
      base0B= "01a252"; #	green
      base0C= "b5e4f4"; #	aqua
      base0D= "01a0e4"; #	blue
      base0E= "a16a94"; #	purple
      base0F= "cdab53"; #	brown
    };
in
base16."3024"
