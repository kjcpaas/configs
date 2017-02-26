# Configs

These are configs for personal use by Joy Paas (kjcpaas).

You can opt to use them if you want.

## Pre-requisites


### Shell

I am using `zsh` for my shell. I am also [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for ease of management of `zsh` plugins.

If you are not using both, then my `.zshrc` settings might not complete work for you.

### Vim

I am using [Vundle](https://github.com/VundleVim/Vundle.vim) to manage my Vim plugins. If you are using another plugin manager, you'll need to tweak the `.vimrc`


## Usage

- Clone the repository.

### `.zshrc`

If you are using `.zshrc`, add `source $PATH_TO_CONFIG/configs/.zshrc` to the top of your `~/.zshrc`. You can override settings belor.

Example:
```
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
