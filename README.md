# Dot Files

Custom Configuration Files for UNIX-like Environments

## Installation

Clone the GitHub repository to the **~/src/dot-files** directory:

```bash
mkdir ~/src && cd ~/src
git clone git@github.com:jasontgreen/dot-files.git
```

Back up your existing **~/.bashrc** file and replace it with a link to the **.bashrc** for your distribution in the cloned repository:

```bash
mv ~/.bashrc ~/.bashrc.old
ln -s ~/src/dot-files/linuxmint/20.1/.bashrc ~/.bashrc
```

Load the updated configuration into your current shell session:

```bash
source ~/.bashrc
```

## Acknowledgements

Git prompt functionality is based on [git-prompt.sh](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh).
