{...}:
{
    programs = {
        zsh ={
            enable = true;
            enableCompletion = true;
            autosuggestion.enable = true;
            syntaxHighlighting.enable = true;
            shellAliases = {
                nix-update = "sudo nixos-rebuild switch --flake /home/sei/SeiEinNix#default";
            };
            oh-my-zsh = {
                enable = true;
                theme = "agnoster";
                plugins = [
                    "git"
                    "history"
                ];
            };
        };
    };
}