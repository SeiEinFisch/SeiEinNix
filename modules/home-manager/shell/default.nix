{...}:
{
    programs = {
        zsh ={
            enable = true;
            enableCompletion = true;
            autosuggestion.enable = true;
            syntaxHighlighting.enable = true;
            # update command
            shellAliases = {
                nix-update = "sudo nixos-rebuild switch --flake /home/sei/SeiEinNix#default";
                neofetch = "clear | fastfetch";
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