# My Dracula-Themed Dotfiles 

A clean, consistent, and dark configuration for my Linux environment, centered around the [Dracula Theme](https://draculatheme.com/).

---

<div align="center">
    
# Screenshots

---

### Core Desktop Experience

| i3 Tiled Layout | Terminal with Ranger | Vim Editor |
| :---: | :---: | :---: |
| <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T172149.png" width="95%" alt="i3 Tiled Layout"> | <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T120806.png" width="95%" alt="Terminal with Ranger file Manager"> | <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T120331.png" width="95%" alt="Vim Editor"> |

| Another Tiled View | `lxterminal` | Firefox Browser |
| :---: | :---: | :---: |
| <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T115834.png" width="95%" alt="i3 Tiled Layout"> | <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T120105.png" width="95%" alt="lxterminal"> | <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T120206.png" width="95%" alt="Firefox"> |

---

### Utilities and Tools

| Application Launcher (`dmenu`) | Terminal with Starship | i3 Status Bar |
| :---: | :---: | :---: |
| <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T120458.png" width="95%" alt="dmenu App Launcher"> | <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T120531.png" width="95%" alt="Terminal with Starship"> | <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T115759.png" width="95%" alt="i3 Status Bar"> |

| Ranger File Manager | Another Vim Screenshot | Another dmenu Screenshot |
| :---: | :---: | :---: |
| <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T120305.png" width="95%" alt="Ranger File Manager"> | <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T120710.png" width="95%" alt="vim"> | <img src="https://github.com/6aru/i3-EllenJoe/blob/main/assets/Screenshots/Screenshot-20251012T115955.png" width="95%" alt="dmenu"> |
</div>

## Configuration Details

| Component | Software/Configuration | Links |
| :--- | :--- | :--- |
| **Window Manager (WM)** | **i3** | [Repository](https://github.com/i3/i3), [Dracula Colorscheme](https://github.com/dracula/i3) |
| **Status Bar** | **i3Status** | [Repository](https://github.com/i3/i3status), [Dracula Config](https://github.com/dracula/i3/tree/master/.config/i3status) |
| **Compositor** | **picom** | [Repository](https://github.com/yshui/picom) |
| **Terminal Emulator** | **Lxterminal** | [Repository](https://github.com/lxde/lxterminal), [Dracula Colorscheme](https://github.com/dracula/lxterminal) |
| **Shell Prompt** | **Starship** | [Homepage](https://starship.rs/), [Jetpack Theme](https://starship.rs/presets/jetpack) |
| **File Manager** | **Ranger** | [Repository](https://github.com/ranger/ranger), [Dracula Colorscheme](https://draculatheme.com/ranger) |
| **Application Launcher** | **dmenu** | [Repository](https://github.com/stilvoid/dmenu), [Dracula Colorscheme](https://github.com/dracula/dmenu) |
| **Text Editor** | **Vim** | [Repository](https://github.com/vim/vim), [Dracula Colorscheme](https://draculatheme.com/vim) |
| **GTK Theme** | **Dracula** | [Theme Page](https://draculatheme.com/gtk) |

---

## Visuals and Assets

| Asset | Details | Link |
| :--- | :--- | :--- |
| **Wallpaper** | Dracula Debian | [Image Link](https://github.com/dracula/wallpaper/blob/master/first-collection/debian.png) |
| **Font & Icons** | **FiraCode Nerd Font** | [Download Link](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip) |
| **Neofetch** | **BMOfetch** | [Theme](https://github.com/Chick2D/neofetch-themes?tab=readme-ov-file) |

---

## 💻 System Core

My environment is intentionally light and portable, reflecting the spirit of the chosen distribution.

| Category | Detail | Notes |
| :--- | :--- | :--- |
| **Distribution** | [**Puppy Linux Bookworm Pup64**](https://bwpup.puppylinux.com/) | A powerful, lightweight Pup based on Debian 12. |
| **Base System** | Debian 12 (Bookworm) | Ensures broad package compatibility via APT/Synaptic. |
| **Operating Mode** | **Live USB / Frugal Install** | Runs fully in RAM for speed and security. |
| **Storage Medium** | **32GB USB 3.0 Pendrive** | The ultimate portable workspace. |

---


## 🚀 Getting Started

If you want to use or adapt these configurations (dotfiles), here's how you can get started.

> **Note:** These configurations are **highly tailored** to my specific environment and installed packages. They may require significant modification to work correctly on your system.

### 1. Clone the Repository

To download the files, open your terminal and run the following command:

```bash
git clone [https://github.com/6aru/i3wm-Dracula.git](https://github.com/6aru/i3wm-Dracula.git)
