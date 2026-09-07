# NeoVim, My Current Setup

## About

This repository contains my configurations and options for my Vim-based code editor, serving as a backup to avoid losing them in case of mistakes. This repository/branch is an updated version of a previous one, where I have finally changed the package manager from ```Packer``` to ```Lazy.nvim```.
If you're reading this and like my setup, feel free to fork and use it :D! If you have suggestions or improvements, let me know, I’d be happy to take a look[^1].

Anything sourced from elsewhere will have proper references, along with any credit for ideas I adopt.

<!--I used [ThePrimeagen's](https://www.youtube.com/@ThePrimeagen) ["0 to LSP; Neovim RC From Scratch"](https://www.youtube.com/watch?v=w7i4amO_zaE) video as a starting point for my setup (```Packer```).-->

## Installation

1. Clone the repository.
2. Copy the "nvim" directory into your .config directory.
3. Navigate to the nvim directory and type ```nvim .``` to access the current directory in ``Neovim mode''. If everything goes correctly, Lazy (the package manager) should begin the installation process.
4. After Lazy finishes cooking[^2], you should be able to use this Neovim configuration. It is recommended to explore all the options the package manager offers before quitting..
5. For icons, install Nerd Fonts using either sudo apt-get install ```nerd-fonts``` (for Debian-based systems) or ```sudo pacman -S nerd-fonts``` (for Arch-based systems). You can choose the one you prefer. IMPORTANT: Not all fonts work, so please verify that the one you choose is compatible.
6. If you want, Copilot[^3] comes with lazyvim with lazyvimextras.
7. To use it as a LaTeX editor, you need to install the vimtex package (plugin for Neovim), latexmk (compiler), and a PDF viewer (I'm using Zathura).

## Tmux

With this setup, I've included my tmux config. To use it, you'll need to install the tmux plugin manager and then copy the ```.tmux``` file.

## Final Words

For now, I don't have any final thoughts, so... enjoy (or suffer) with my text editor.

## Future Updates[^4]

* ~~Replace the file explorer (the current one was the first I found).~~
* ~~Setup Tmux~~.
* ~~Latex editor config~~.
* Customize the greeter.

## Some Screenshots

![Greetings](https://github.com/JorgeCSH/NVim-config/blob/nvim_config/screenshots/picture_1_neovim.png)
![Using_it](https://github.com/JorgeCSH/NVim-config/blob/nvim_config/screenshots/picture_2_neovim.png)
![Latex_editor](https://github.com/JorgeCSH/NVim-config/blob/nvim_config/screenshots/picture_3_neovim.png)[^5]

## References

* Package Manager Lazy.nvim: <https://lazy.folke.io/>  
* Harpoon: <https://github.com/ThePrimeagen/harpoon>
* UndoTree: <https://github.com/mbbill/undotree?tab=readme-ov-file>
* Greeter[^3] : <https://github.com/goolord/alpha-nvim?tab=readme-ov-file>
* tmux: <https://github.com/aserowy/tmux.nvim>
* Copilot: <https://github.com/github/copilot.vim>
* Statusline: <https://github.com/nvim-lualine/lualine.nvim?tab=readme-ov-file>
* Vimtex: <https://github.com/lervag/vimtex>
* Latexmk: <https://mgeier.github.io/latexmk.html>
* Zathura: <https://github.com/pwmt/zathura>

[^1]: For now, January 29th, I'm still a bit of a newbie for you to know.
[^2]: Installing packages.
[^3]: You dirty [REDACTED].
[^4]: Still cooking.
[^5]: LaTeX version of the compiled document created by ["Pablo Pizarro"](https://github.com/Template-Latex/Professional-CV).
