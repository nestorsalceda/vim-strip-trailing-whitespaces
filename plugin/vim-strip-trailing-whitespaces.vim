" vim-strip-trailing-whitespaces
" Author: Néstor Salceda, masukomi
" Version: 0.2

" http://vimcasts.org/episodes/tidying-whitespace
function! StripTrailingWhitespace(command)
	" Only strip if the b:noStripeWhitespace variable isn't set
	if exists('b:noStripWhitespace')
		return
	endif

	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	execute a:command
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfunction

autocmd BufWritePre * :call StripTrailingWhitespace("%s/\\s\\+$//e")
" example for excluding specific filetypes
" autocmd FileType ruby,javascript,perl let b:noStripWhitespace=1
