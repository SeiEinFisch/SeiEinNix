{...}:

{
  programs.git = {
    enable = true;
    userName = "SeiEinFisch";
    userEmail = "hoangnam2001@ymail.com";
    
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
  programs.gh.enable = true;
}
