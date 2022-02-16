EXECS = macos common

.PHONY: $(EXECS) common
all: $(EXECS) common

# common: repos editors keys

# keys: export_keys 

macos:
	$(MAKE) --directory=macos all

linux_server:
	$(MAKE) --directory=linux server

linux_desktop:
	$(MAKE) --directory=linux desktop

# repos:
# 	$(MAKE) --directory=repos all

editors:
	micro -plugin install monokai-dark
	micro -plugin install comment
	micro -plugin install editorconfig
	micro -plugin install filemanager
	micro -plugin install jump
	micro -plugin install quoter
	micro -plugin update

asdf:
	asdf plugin add nodejs
# 	asdf plugin add R
	asdf plugin add Python
	asdf plugin add java
	asdf plugin add rust
	asdf plugin add ruby

languages:
	asdf install nodejs latest
	asdf global nodejs latest
# 	asdf install R latest
	asdf install Python latest
	asdf global Python latest
# 	asdf install java latest
	asdf install rust latest
	asdf global rust latest
	asdf install ruby latest
	asdf global ruby latest

latex:
	sudo tlmgr update --self
	sudo tlmgr install biblatex
	sudo tlmgr install biber
	sudo tlmgr install marvosym
	sudo tlmgr install enumitem
	sudo tlmgr install lastpage
	sudo tlmgr install datetime2
	sudo tlmgr install tracklang
	sudo tlmgr install blindtext


esp-idf:
	mkdir -p ~/esp
	cd ~/esp
	git clone -b v4.3.2 --recursive https://github.com/espressif/esp-idf.git
	cd esp-idf
	PIP_EXTRA_INDEX_URL=https://dl.espressif.com/pypi ./install.sh esp32

zsh:
	chsh -s $(which zsh)
