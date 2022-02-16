DOTFILES_PATH=$(HOME)/Code/dotfiles
symlink: .zshrc .gitconfig .gitignore .gitmessage .gitconfig.local .gitconfig.work .tmux.conf .antigenrc .asdfrc
	echo "Creating symlinks ............................"
	echo "Using ${DOTFILES_PATH}....."
	sudo ln -sf $(DOTFILES_PATH)/config/.zshrc ~/.zshrc
	sudo ln -sf $(DOTFILES_PATH)/config/.gitconfig ~/.gitconfig
	sudo ln -sf $(DOTFILES_PATH)/config/.gitignore ~/.gitignore
	sudo ln -sf $(DOTFILES_PATH)/config/.gitmessage ~/.gitmessage
	sudo ln -sf $(DOTFILES_PATH)/config/.gitconfig.local ~/Code/{username}/.gitconfig
	sudo ln -sf $(DOTFILES_PATH)/config/.gitconfig.work ~/Code/{work}/.gitconfig
	sudo ln -sf $(DOTFILES_PATH)/config/.tmux.conf ~/.tmux.conf
	sudo ln -sf $(DOTFILES_PATH)/config/.antigenrc ~/.antigenrc
	sudo ln -sf $(DOTFILES_PATH)/config/.asdfrc ~/.asdfrc