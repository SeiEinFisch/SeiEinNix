{inputs,pkgs,..}: 
    let
        spicePkgs = inputs.spicetify.packages.${pkgs.system}.default;
    in{
        imports = [inputs.spicetify.homeManagerModules.default];

  programs.spicetify = {
    enable = true;

    enabledExtensions = with spicePkgs.extensions; [
        fullAppDisplay
        shuffle
    ];
  };
}
