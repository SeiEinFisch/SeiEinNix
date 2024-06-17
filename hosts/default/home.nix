{ config, pkgs, inputs,... }:

{
  imports = [
    ../../modules/home-manager
    inputs.nix-colors.homeManagerModules.default
  ];

  colorScheme = inputs.nix-colors.colorSchemes.rose-pine;
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "sei";
  home.homeDirectory = "/home/sei";

  fonts.fontconfig.enable = true;
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # "Hello, world!" when run.
    pkgs.hello

  ];


  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
