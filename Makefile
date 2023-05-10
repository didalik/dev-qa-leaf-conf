# Locals {{{1
SHELL := bash
RECIPES = bash_profile vim_rc

.PHONY: $(RECIPES)

# Add git branch to bash prompt {{{1
bash_profile: $(HOME)/.profile

$(HOME)/.profile: bash/.profile bash/.profile-functions
	@[ -e $(HOME)/.profile.saved ] || cp $(HOME)/.profile $(HOME)/.profile.saved
	@cat bash/.profile >> $(HOME)/.profile
	@cp bash/.profile-functions $(HOME)/.profile-functions

# Use vim colorscheme default {{{1
vim_rc: $(HOME)/.vimrc

$(HOME)/.vimrc: vim/.vimrc
	@[ -e $(HOME)/.vimrc.saved ] || mv $(HOME)/.vimrc $(HOME)/.vimrc.saved
	@cp vim/.vimrc $(HOME)/
