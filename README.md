# Configs

These are configs for personal use by Joy Paas (kjcpaas).

You can opt to use them if you want.

## Pre-requisites


### Shell

- `zsh` for shell
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for ease of management of `zsh` plugins
- [z](https://github.com/rupa/z) to navigate quickly by terminal
- [fzf](https://github.com/junegunn/fzf) for multi-purpose finder

If you are not using all of them, then my `.zshrc` settings might not completely work for you. You'll need to tweak according to your own needs.

### Vim

I am using [vim-plug](https://github.com/junegunn/vim-plug) to manage my Vim plugins. If you are using another plugin manager, you'll need to tweak the `.vimrc`


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

Run `source ~/.zshrc` to reload the shell. `src` can be used after it's lodaed initially.

### `.vimrc`

Install [vim-plug](https://github.com/junegunn/vim-plug) first since it's needed to install plugins.

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Replace `~/.vimrc` with `source $PATH_TO_CONFIG/configs/.vimrc`.

After opening `vim`, type `:PlugInstall` command to install the bundles. Once the install is successful, restart vim to apply the changes.

## Notes

I removed my original aliases for `git` since I am now using the plugin from `oh-my-zsh`. The list of commands are [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git)

For `docker-compose`, I also use the `docker-compose` plugin. Shortcuts available [here](https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/docker-compose/docker-compose.plugin.zsh).

NVM is managed by [zsh-nvm](https://github.com/lukechilds/zsh-nvm).
