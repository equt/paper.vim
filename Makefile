build:
	nvim -u NONE -c 'set rtp^=$$PWD ignorecase | call colortemplate#make(".", "!", 0) | qall!' \
		-- templates/suisei.colortemplate

remove:
	rm -rf ./artwork
	rm -f ./autoload/colortemplate.vim
	rm -rf ./autoload/colortemplate
	rm -rf ./templates
	sed 's/^colors\///g; s/^doc\///g' .gitignore > .gitignore_new && mv .gitignore_new .gitignore
	rm -f ./README.md
