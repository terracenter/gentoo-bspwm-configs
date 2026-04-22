# 🌌 Gentoo BSPWM Dotfiles

<p align="center">
  <img src="https://raw.githubusercontent.com/terracenter/gentoo-bspwm-configs/main/.config/neofetch/logo.png" alt="Gentoo Logo" width="150" onerror="this.style.display='none'">
</p>

Un entorno de escritorio minimalista, eficiente y altamente estético basado en **Gentoo Linux**. Este repositorio centraliza mis archivos de configuración para una experiencia de usuario optimizada.

---

## 🛠️ Stack Tecnológico

| Componente | Herramienta | Descripción |
| :--- | :--- | :--- |
| **Window Manager** | `bspwm` | Gestión de ventanas por mosaico binario. |
| **Hotkeys** | `sxhkd` | Demonio de atajos de teclado simple y potente. |
| **Status Bar** | `polybar` | Barra de estado modular y personalizable. |
| **File Manager** | `ranger` | Explorador de archivos basado en Vim para la terminal. |
| **Audio** | `Pipewire` | Servidor de audio moderno (control con `wpctl`). |
| **Monitor** | `btop` | Monitor de recursos del sistema con interfaz gráfica. |

---

## 📂 Estructura del Ecosistema

```bash
~/.config/
├── 🪟 bspwm/       # Reglas de ventanas y comportamiento del WM
├── ⌨️ sxhkd/       # La "mente" de tus atajos de teclado
├── 📊 polybar/     # Diseño, módulos y scripts de la barra
├── 📂 ranger/      # Atajos y previsualizaciones de archivos
├── 🌡️ btop/        # Configuración estética del monitor
└── 🖼️ neofetch/    # Personalización de la info del sistema
```

---

## 🚀 Instalación Rápida

### 1️⃣ Clonar el repositorio
```bash
git clone git@github.com:terracenter/gentoo-bspwm-configs.git ~/gentoo-bspwm-configs
```

### 2️⃣ Desplegar (El Método Seguro)
> ⚠️ **IMPORTANTE:** Este proyecto prohíbe el uso de *symlinks*. Copiamos para mantener la integridad de `~/.config`.

```bash
cp -rv ~/gentoo-bspwm-configs/.config/* ~/.config/
```

### 3️⃣ Aplicar cambios
*   **Refrescar Teclado:** `pkill -USR1 -x sxhkd`
*   **Reiniciar WM:** `Super + Alt + r`
*   **Lanzar Barra:** `~/.config/polybar/launch.sh`

---

## ⌨️ Atajos Imprescindibles

*   `Super + Enter` ⮕ Abrir Terminal
*   `Super + d` ⮕ Lanzador de aplicaciones
*   `Super + Alt + q` ⮕ Cerrar ventana enfocada
*   `Super + {1-9}` ⮕ Cambiar de espacio de trabajo

---

## 🛡️ Reglas de Mantenimiento

Para asegurar que el repositorio siempre esté sincronizado con tu sistema real:

1. **Fuente de Verdad:** `~/.config` es el lugar sagrado.
2. **Actualizar Backup:**
```bash
cp -r ~/.config/<carpeta> ~/gentoo-bspwm-configs/.config/
cd ~/gentoo-bspwm-configs && git add . && git commit -m "feat: mejoras estéticas" && git push
```

---

<p align="center">
  Configurado con ❤️ por <b>Terracenter</b>
</p>
