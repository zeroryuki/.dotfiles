locup() {
  sudo pacman -Sy
  local upd=$(pacman -Qu | fzf -m --preview 'pacman -Si {1}')

  if [[ $upd ]]; then
    for prog in $(echo $upd);
    do; sudo pacman -S $prog; done;
  fi
}
