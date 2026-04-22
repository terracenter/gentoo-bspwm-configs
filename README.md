# Gentoo BSPWM Dotfiles (Terracenter)

Este repositorio contiene las configuraciones personales para un entorno de escritorio en **Gentoo Linux** utilizando **bspwm** como gestor de ventanas.

## 🛠️ Componentes Principales
- **WM:** `bspwm` (Binary Space Partitioning Window Manager).
- **Hotkeys:** `sxhkd` (Simple X Hotkey Daemon).
- **Barra:** `polybar`.
- **Terminal File Manager:** `ranger`.
- **Sistema de Audio:** `pipewire` (gestión con `wpctl`).
- **Monitoreo:** `btop`.

## 📂 Estructura del Repositorio
\`\`\`text
.
├── .config/
│   ├── bspwm/       # Configuración del gestor de ventanas
│   ├── sxhkd/       # Atajos de teclado
│   ├── polybar/     # Configuración de la barra superior
│   ├── ranger/      # Configuración del explorador de archivos
│   ├── btop/        # Temas y configuración de btop
│   └── neofetch/    # Configuración de info del sistema
└── GEMINI.md        # Reglas de mantenimiento del proyecto
\`\`\`

## 🚀 Instalación y Activación

### 1. Clonar el repositorio
Si aún no lo tienes:
\`\`\`bash
git clone git@github.com:terracenter/gentoo-bspwm-configs.git ~/gentoo-bspwm-configs
\`\`\`

### 2. Desplegar configuraciones
Siguiendo la **regla de oro** del proyecto, los archivos deben copiarse, no enlazarse simbólicamente:
\`\`\`bash
cp -r ~/gentoo-bspwm-configs/.config/* ~/.config/
\`\`\`

### 3. Recargar configuraciones
- **sxhkd:** Para aplicar cambios en los atajos sin reiniciar sesión:
  \`\`\`bash
  pkill -USR1 -x sxhkd
  \`\`\`
- **bspwm:** Reiniciar el WM (normalmente \`Super + Alt + r\`).
- **polybar:** Ejecutar el script de lanzamiento:
  \`\`\`bash
  ~/.config/polybar/launch.sh
  \`\`\`

## ⚠️ Regla de Oro (Mantenimiento)
**PROHIBIDOS LOS SYMLINKS:** Para mover archivos entre la carpeta de configuración y el backup, usar siempre \`cp\`. Los archivos en \`~/.config\` son siempre la fuente de verdad.

## 📝 Actualizar el Backup
Para subir cambios recientes desde tu sistema al repositorio:
\`\`\`bash
cp -r ~/.config/<carpeta> ~/gentoo-bspwm-configs/.config/
cd ~/gentoo-bspwm-configs
git add .
git commit -m "Update: descripción de los cambios"
git push
\`\`\`
