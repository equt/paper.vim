build:
	nvim -u NONE -c 'set rtp^=$$PWD ignorecase | call colortemplate#make(".", "!", 0) | qall!' \
		-- templates/paper.colortemplate

