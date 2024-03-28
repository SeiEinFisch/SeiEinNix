{...}:
{
    programs = {
        zsh ={
            enable = true;
            enableAutosuggestions.enable = true;
            syntaxHighlighting.enable = true;
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