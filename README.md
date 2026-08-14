# dotfiles-cachyOS

Rice de **CachyOS + Hyprland + Noctalia**.

Configs de atajos, tiling scroll, barra/dock, y terminal. Sin Steam, sin secretos, sin `~/.local/state`.

## Estructura

```
hypr/           →  ~/.config/hypr/
noctalia/       →  ~/.config/noctalia/   (solo config.toml)
kitty/          →  ~/.config/kitty/
```

La sesión de Hyprland carga `hypr/hyprland.lua`, no el `hyprland.conf` (ese archivo casi no se usa).

## Instalar en otra máquina

```bash
git clone https://github.com/Daniel-GM20/dotfiles-cachyOS.git ~/dotfiles-cachyOS

cp -a ~/dotfiles-cachyOS/hypr ~/.config/hypr
mkdir -p ~/.config/noctalia
cp ~/dotfiles-cachyOS/noctalia/config.toml ~/.config/noctalia/
cp -a ~/dotfiles-cachyOS/kitty ~/.config/kitty

hyprctl reload
```

Dependencias útiles (CachyOS):

- `noctalia`
- `kitty`
- `mpv` y `mpvpaper` (fondos de video; plugin `noctalia/mpvpaper`)
- `steam` (opcional)
- `spotify-launcher` (opcional)

## Atajos que no son los de fábrica

| Atajo | Acción |
|---|---|
| Super + Q / Super + Backspace | Cerrar ventana |
| Super + 1/2/3 | Workspace |
| Super + rueda | Desplazar tiling scroll |
| Super + Ctrl + rueda | Cambiar workspace (animación vertical) |
| Super + Alt + W | Selector de wallpaper de video |
| Super + Shift + P | Captura de región |

Solaar (DPI del mouse) no va en este repo: es del hardware.
