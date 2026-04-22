# Contexto del Proyecto: Gentoo Desktop Config

## ⚠️ REGLA DE ORO
- **PROHIBIDOS LOS SYMLINKS:** Para mover archivos entre esta carpeta y backups, usar siempre `cp`. NUNCA usar `ln -s`. Los archivos en `~/.config` son la FUENTE DE VERDAD.

## 🛠️ Entorno Técnico
- **SO:** Gentoo Linux.
- **WM:** `bspwm`.
- **Hotkeys:** `sxhkd`.
- **Barra:** `polybar`.
- **Audio:** `pipewire` (usar `wpctl`).

## 📝 Procedimiento de Trabajo
1. Los cambios se realizan directamente en `~/.config`.
2. Tras modificar `sxhkdrc`, usar `pkill -USR1 -x sxhkd` para recargar.
3. Para respaldar: `cp -r ~/.config/<folder> <destino_backup>`.
