# NeoVim Repository, now starring lazy as a package manager

## About
This repository contains my configurations and options for my Vim-based code editor, serving as a backup to avoid losing them in case of mistakes.  
If you're reading this and like my setup, feel free to fork and use it :D! If you have suggestions or improvements, let me know, I’d be happy to take a look[^1].

Anything sourced from elsewhere will have proper references, along with any credit for ideas I adopt.

I used [ThePrimeagen's](https://www.youtube.com/@ThePrimeagen) ["0 to LSP; Neovim RC From Scratch"](https://www.youtube.com/watch?v=w7i4amO_zaE) video as a starting point for my setup.

## Installation
1. Clone the repository.
2. Copy the "nvim" directory into your .config directory, then install ```Packer``` by following the instructions in the repository.
3. Enter the nvim directory and run nvim . to explore your files with Neovim. You may encounter many errors, for now, ignore them by pressing ```Enter``` a bunch of times. 
4. Run ```:PackerInstall``` and ```:PackerSync.``` After these steps, the errors should be resolved.
5. For icons, install Nerd Fonts using either sudo apt-get install ```nerd-fonts``` (for Debian-based systems) or ```sudo pacman -S nerd-fonts``` (for Arch-based systems). You can choose the one you prefer. IMPORTANT: Not all fonts work, so please verify that the one you choose is compatible.
6. (extra) If you want Copilot[^5], you need to install it from the official repository using git clone, just like with Packer.

## Final Words
For now, I don't have any final thoughts, so... enjoy (or suffer) with my text editor.

## Future Updates[^3]
* ~~Replace the file explorer (the current one was the first I found).~~
* Replace the greeter.
* Setup. Tmux.

## Configurations[^2]:
* `[space]ex`: Exit the current file (not Neovim).
* `[space]pf`: Search within project files.
* `[space]ps`: Search across projects.
* `[space]fb`: Toggle file browser.

## Some Screenshots
![Greetings](https://github.com/JorgeCSH/NVim-config/blob/main/screenshots/nvim_greeter.png)
![Repository](https://github.com/JorgeCSH/NVim-config/blob/main/screenshots/file_nvim.png)

## References
* Package Manager Packer (caution, unmaintained): https://github.com/wbthomason/packer.nvim 
* Telescope: https://github.com/nvim-telescope/telescope.nvim
* Colour scheme: https://github.com/catppuccin/nvim?tab=readme-ov-file
* Treesitter: https://github.com/nvim-treesitter/nvim-treesitter
* Harpoon: https://github.com/ThePrimeagen/harpoon
* UndoTree: https://github.com/mbbill/undotree?tab=readme-ov-file
* Fugitive: https://github.com/tpope/vim-fugitive
* lsp-zero: https://github.com/VonHeikemen/lsp-zero.nvim?tab=readme-ov-file
* Telescope_file_browser: https://github.com/nvim-telescope/telescope-file-browser.nvim
* Greeter[^4] : https://github.com/goolord/alpha-nvim?tab=readme-ov-file
* tmux: https://github.com/aserowy/tmux.nvim
* Copilot: https://github.com/github/copilot.vim

[^1]: For now, October 5th, I'm still a bit of a newbie for you to know.
[^2]: For now that are the options that I have made, or well, what I think they do...
[^3]: I don’t have much time right now, but I plan to make changes in the future.
[^4]: Still working on that.
[^5]: You dirty [REDACTED]


