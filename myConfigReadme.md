# myConfig explained

https://www.atlassian.com/git/tutorials/dotfiles

## New install
add alias to `.zshrc` file

```sh
alias myConfigs='/usr/bin/git --git-dir=$HOME/.myConfigs/ --work-tree=$HOME'
```

add `.myConfigs` to `.gitignore`

```sh
echo ".myConfigs" >> .gitignore
```

clone into bare repo

```sh
git clone --bare <git-repo-url> $HOME/.myConfigs
```
define alias in current shell scope

```sh
alias myConfigs='/usr/bin/git --git-dir=$HOME/.myConfigs/ --work-tree=$HOME'
```

Checkout the actual content from the bare repository to your $HOME:

```sh
myConfigs checkout
```

Set the flag showUntrackedFiles to no on this specific (local) repository:

```sh
config config --local status.showUntrackedFiles no
```

Done
