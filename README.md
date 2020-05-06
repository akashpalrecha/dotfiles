From https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

First, delete any existing files that might conflict with the files in the repo and then run the below commands.

```python
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> ~/.bashrc
source ~/.bashrc
echo ".cfg" >> .gitignore
git clone --bare https://github.com/akashpalrecha/dotfiles.git $HOME/.cfg
config checkout
config config --local status.showUntrackedFiles no
echo "source ~/.zshrc" >> ~/.bashrc
source ~/.bashrc
```
