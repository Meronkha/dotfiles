DIR=$(HOME)/dotfiles

mac: vim-mac bash vim-plug
linux: vim-linux zsh vim-plug

vim-mac:
	ln -svfh $(DIR)/vim ~/.vim
	ln -svf $(DIR)/vim/.vimrc ~/.vimrc
	ln -svf $(DIR)/.tmux.conf ~/.tmux.conf
	ln -svf $(DIR)/bash/.bashrc ~/.bashrc

vim-linux:
	ln -svf $(DIR)/vim ~/.vim
	ln -svf $(DIR)/vim/vimrc ~/.vimrc

vim-plug:
	vim +PlugInstall +:qa
	mkdir -p $(DIR)/vim/swapfiles

bash: 
	ln -svf $(DIR)/bash/.bashrc ~/.bashrc
	ln -svf $(DIR)/bash/.aliases ~/.aliases
	git submodule update --init --recursive

# To test setup from scratch
teardown: teardown-vim teardown-zsh

teardown-vim:
	rm -f ~/.vimrc
	rm -rf ~/.vim
	rm -rf $(DIR)/vim/plugged

teardown-zsh:
	rm -f ~/.zshrc
	rm -f ~/.aliases
	rm -rf ~/.oh-my-zsh

.PHONY: vim zsh
