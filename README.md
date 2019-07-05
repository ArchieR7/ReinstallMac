# Reinstall macOS by [Archie](https://twitter.com/ChangArchie)

## macOS

### System Preferences

- Checkmark all of functions
	`Trackpad`
- Enable dragging with three finger drag
	`Accessibility -> Pointer Control -> Trackpad Options...`
- Login Apple ID
	`Apple ID`
- Move position of Dock and turn Automatically hide and show the Dock on
	`Dock`

### Terminal

- Download [iTerm2](https://iterm2.com)
- Replace bash to zsh with `chsh -s /bin/zsh`
	//or you can try it in `User & Group` with [this tutorial](https://www.archie.tw/2019/03/15/change-login-shells-without-chsh/)
- Install [brew](https://brew.sh/index_zh-tw)
	```
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	```
- Install [oh my zsh](https://github.com/robbyrussell/oh-my-zsh)
	```
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	```
- Replace Apple Git by `brew install git`
- Install npm
	```
	brew install npm
	```
- Install [Commitizen](https://github.com/commitizen/cz-cli) / [my blog](https://www.archie.tw/2018/05/08/commitizen/)
	```
	npm install -g commitizen
	npm install -g cz-conventional-changelog
	```

#### iTerm2 style

- Install [Powerline theme](https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme)
- Install [Powerline fonts](https://github.com/powerline/fonts)
- Edit ~/.zshrc
	- Change ZSH_THEME
	- Add some alias
	- Add prompt: 
	```
	PROMPT='%{$fg_bold[white]%}Archie  %{$fg_bold[red]%}➜%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
	```
- Change iTerm2 color theme to [Dracula](https://draculatheme.com)
	`Preferences -> Profiles -> Colors -> Color Presets -> Imports... -> Dracula`
- Change iTerm2 text to Source Code Pro For Powerline
	`Preferences -> Profiles -> Text -> Change Font`
- Add Keys
	- Delete by word: `Send Hex Codes: 0x17`
	- Delete all: `Send Hex Codes: 0x15`
	- Back by word: `Send ^[ b`
	- Front by word: `Send ^[ f`
	`Preferences -> Profiles -> Keys`
- Enable scroll wheel sends arrow keys when in alternate screen mode
	`Preferences -> Advanced`
- Disable Confirm "Quit iTerm2 (⌘Q)" if windows open
	`Preferences -> General`

### SSH

- Create a SSH key 
	```
	$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
	```
- [Edit ~/.ssh/config](https://www.archie.tw/2017/07/14/多個帳號的-ssh-config-設定/) for multiple hosts
	```
	Host *
  		AddKeysToAgent yes
  		UseKeychain yes
  	Host github.com
  		IdentityFile ~/.ssh/GitHub_rsa
  	```
- copy SSH public key to paste in host website
	```
	pbcopy < ~/.ssh/GitHub_rsa
	```

### Xcode
- Set up xcode-select
	```
	xcode-select -s Xcode_Path
	```
- Edit Key Bindings
- [Add Templates](https://www.archie.tw/2019/07/02/建立-xcode-的檔案範本/)
