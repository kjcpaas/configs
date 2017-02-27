# Configs

These are configs for personal use by Joy Paas (kjcpaas).

You can opt to use them if you want.

## Pre-requisites


### Shell

- I am using `zsh` for my shell.
- I am also using [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for ease of management of `zsh` plugins.
- Lastly, I use [z](https://github.com/rupa/z) to navigate quickly using my terminal

If you are not using all of them, then my `.zshrc` settings might not completely work for you. You'll need to tweak according to your own needs.

### Vim

I am using [Vundle](https://github.com/VundleVim/Vundle.vim) to manage my Vim plugins. If you are using another plugin manager, you'll need to tweak the `.vimrc`


## Usage

- Clone the repository.

### `.zshrc`

If you are using `.zshrc`, add `source $PATH_TO_CONFIG/configs/.zshrc` to the top of your `~/.zshrc`. You can override settings below.
If you want to use `z`, add `. $PATH_TO_CONFIG/configs/z.sh` at the very top of `~/.zshrc`

Example:
```
. ~/my_code/configs/z.sh

source ~/my_code/configs/.zshrc

" Add your other settings below this line
alias v="vim"
```

Run `source ~/.zshrc` to reload the shell.

### `.vimrc`

Install [Vundle](https://github.com/VundleVim/Vundle.vim) first since it's needed to install plugins.

```
 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Replace `~/.vimrc` with `source $PATH_TO_CONFIG/configs/.vimrc`.

After opening `vim`, type `:BundleInstall` command to install the bundles. Once the install is successful, restart vim to apply the changes.

## Notes

I removed my original aliases for `git` since I am now using the plugin from `oh-my-zsh`. The list of commands are [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git)
