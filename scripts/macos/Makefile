EXECS = install_homebrew brewfile
.PHONY: install_homebrew brewfile

all: $(EXECS)

install_homebrew:
	echo Checking is homebrew is installed .......
	if !which brew >& /dev/null; then echo Homebrew is not installed!; echo Install now...; /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; fi

brewfile: Brewfile
	echo Installing packages....
	brew update
	brew upgrade
# 	brew bundle --file=xcode.bf
# 	sudo xcodebuild -license accept
# 	brew bundle --file=main.bf
	brew bundle --file=Brewfile
	brew cleanup
	brew doctor

dump:
	brew bundle dump --force --file=Brewfile

update:
	brew cu

restore:
	brew bundle --force cleanup
