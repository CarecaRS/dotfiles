# Dotfiles

# Configurações/dependências extras
Não lembro de todas as dependências e a lista original acabou se perdendo nos trâmites githubescos. Conforme for lembrando ou for pipocando eu vou inserindo aqui.

Nem todas as configurações são dependentes de externalidades, o que não for explictado aqui parte-se do princípio que não depende de nada.

## # .bashrc
Muito embora esteja salvo aqui, por razões exclusivamente de backup, o arquivo é armazenado na home.
O pacote `neofetch` é que faz a imagem da distro e apresenta as informações na inicialização.

## # gtk-4.0
Salvo aqui apenas por questão de configuração do cursor do mouse. Utiliza o cursor `Bibata Modern Ice` do gnome-look.org.

## # i3
Para o numlock iniciar ligado precisa instalar o pacote `numlockx`, já possui ordem de execução no config.

## # i3lock
Precisa instalar apenas os pacotes `i3lock` e `xautolock`, as configurações estão no próprio config do `i3`. O primeiro busca a imagem para bloqueio (PNG) e efetivamente bloqueia a tela, o segundo é um timer em minutos definido no config.

A tela do bloqueio eu fiz blur usando 'magick convert -blur 0x25 input.png output.png' e inseri a escrita com o Canva (login pessoal).

## # nvim
No notebook instalei o NVChad e tá tudo certo.

## # polybar
Precisa dos pacotes `playerctld` (visualização do que está tocando e passar/pausar música), `zscroll` (nome da música scrollando)

## # rofi
Tem um git 'rofi-themes-collection' que precisa baixar, ali estão os temas.

## # SDDM
Primeiro tem que desligar o gdm `sudo systemctl disable gdm.service` e aí sim ligar o sddm `sudo systemctl enable sddm.service`. Estou usando o tema `chili` (disponível no AUR ou no GitHub). O arquivo de configuração é simples e fica em `/etc/sddm.conf.d/` -- mantive uma cópia aqui na pasta `sddm` só para ter mesmo, tem só o numlock alterado. Mesmo assim algumas configurações precisam ser feitas na mão: foto do avatar em local apropriado, configuração do locale e do horário, etc. Veja essas coisas na página do SDDM no Arch.

## # Steam
Se nao for instalado no automático, precisa do pacote `lib32-nvidia-utils` para utilizar certinho a GPU Nvidia.

## # Hyprland and hypr-ecosystem
Aqui constam os arquivos do `Hyprland`.

## # waybar - bongocat
Instalação pelo AUR, configuração segue o [github wayland-bongocat](https://github.com/saatvik333/wayland-bongocat)

### Módulo updates pacman/AUR
Necessário instalar pacote AUR `waybar-module-pacman-updates-git`

### Módulo weather
Necessário instalar pacote AUR `wttrbar` e fontes com emojis (usando atualmente `noto-fonts-emoji` e `woff2-font-awesome`)
