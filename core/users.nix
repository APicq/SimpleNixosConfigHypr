{pkgs,...}:

{  
  #-------
  # users
  #-------

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.pic = {
    isNormalUser = true;
    hashedPassword = "$6$io67fBSNH6iz1NfZ$sGXAA.0CRlp9o6MMfbDJaelSXJEwnj9Fx3pWL8o.EMzJzBDoPhNRerySXe5tVuWaWta3.CUpk8HbpEf6ptGtM.";
    home = "/home/pic";
    extraGroups = [ "networkmanager" "video" "users" "audio" "adbusers" "lp" "scanner" "jackaudio" "dialout"];
  };

  # users.users.cornflake = {
  #   isNormalUser = true;
  #   home = "/home/cornflake";
  #   extraGroups = ["networkmanager" "video" "users" "audio"];
  #   createHome = true;
  #   hashedPassword = "$6$VxgC13EktMehCrBq$7R8IyVs/wVQ.bvF19TaGYHDjGXsbLgm2BvFWzIrGJxRvM2XhnnkdwRr4hu1CfH.EjV4ERnRkjB.8tQFSzWmmk/";
  # };

  users.users.apic = {
    isNormalUser = true;
    home = "/home/apic";
    createHome = true;
    extraGroups = [ "wheel" "networkmanager" "video" "users" "audio" "adbusers" "lp" "scanner" "jackaudio" "dialout"];
    hashedPassword = "$y$j9T$a6yKQRjdxuHg.QNjWWf1w1$O2WwvicG4l0dG1qmoJQDFZ8UlIlIqTx1vjxb6KyDnG6";
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true; # todo ??
  };
  
  users.users.root.hashedPassword = "$6$q9fZH4UQUWuFD3lO$PQGw6Hgh9zUhEZDqKsaV5u0t9TeNv2N6H5IQnJqiJxuis09MpjnSBN12W6yx35ULbQEbvZbQPIMEBtwoD3TLd/";

  nix.settings.trusted-users = [ "root" "pic" "apic" ];
  users.mutableUsers = false;

}
