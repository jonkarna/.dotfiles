# Jon Karna's Dot Files

My configuration files setup so that I don't have to repeatedly reconfigure my development environment on each computer that I use.

## Installation

Clone the repo and pull the submodules

    git clone --recursive git://github.com/jonkarna/.dotfiles.git

Create links to dotfiles

    rake install

## Extra

If there are system specific vim settings, place it into a ~/.gvimrc.local or ~/.vimrc.local file. This will be loaded automatically if it exists.
