abc=$(echo -e "Nord-Vim\nSeoul256\n"|fzf)
if [[ $abc -eq "Seoul256" ]]; then
 export FZF_DEFAULT_OPTS="--height=60% --layout=reverse --info=inline --border --margin=1 --padding=1  --color=bg+:#3F3F3F,bg:#4B4B4B,border:#6B6B6B,spinner:#98BC99,hl:#719872,fg:#D9D9D9,header:#719872,info:#BDBB72,pointer:#E12672,marker:#E17899,fg+:#D9D9D9,preview-bg:#3F3F3F,prompt:#98BEDE,hl+:#98BC99"
 else
 export FZF_DEFAULT_OPTS="--height=80% --layout=reverse --info=inline --border --margin=1 --padding=1 --color=bg+:#3B4252,bg:#2E3440,spinner:#81A1C1,hl:#616E88,fg:#D8DEE9,header:#616E88,info:#81A1C1,pointer:#81A1C1,marker:#81A1C1,fg+:#D8DEE9,prompt:#81A1C1,hl+:#81A1C1"
 fi

