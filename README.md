Dotfiles
========

These are personal dotfiles, used on my current Arch build. I include an quick install script (dot which will backup your current matching dotfiles and create symlinks to mine.


Screenshots
-------
![Naked](http://i.imgur.com/knfINKd.png)
Naked

![Browsing](http://i.imgur.com/9xKOC5b.png)
Browsing

![Development](http://i.imgur.com/MbLbBKZ.png)
Development

Install instructions
-------
To install my dotfiles, you can use the file `dot_symlink.sh`. It is already preconfigured to install all the dotfiles I personnally use, but you should modify the file to include your own files, or delete those you don't want. This script backups all pre-existing dotfiles, then creates symlinks into your home folder.

 1. Into your favorite terminal emulator, move into your home directory (`cd ~`), then run `git clone https://github.com/folkrav/dotfiles`.
 2. Move into the dotfiles folder (`cd dotfiles`).
 3. (Optional) Copy all additional dotfiles you would like to install, **without the dot**, into the current (~/dotfiles) folder.
 4. (Optional) Modify line 14 of file `dot_symlink.sh` to match the list of files you want to install.
 5. Run the script : `./dot_symlink.sh`
