# Homebrew Tap for Cheon Jaeung's Tools

## Setup

You can add my tap to your system using:

```shell
brew tap cheonjaeung/tap
```

And install a package that you want:

```shell
brew install cheonjaeung/tap/<name>
```

## Available Packages

### waste

A simple command line tool to move files and directories to the trash.

**Homepage:** [https://github.com/cheonjaeung/waste](https://github.com/cheonjaeung/waste)

```shell
brew install waste
# or
brew install cheonjaeung/tap/waste
```

### fzf-android

Bash and Zsh key bindings for Android SDK CLI tools, inspired by fzf-git.

**Homepage:** [https://github.com/cheonjaeung/fzf-android](https://github.com/cheonjaeung/fzf-android)

```shell
brew install fzf-android
# or
brew install cheonjaeung/tap/fzf-android
```

To enable the key bindings, add this line to your `.bashrc` or `.zshrc`:

```shell
source $(brew --prefix)/share/fzf-android/fzf-android.sh
```
