vim-strip-trailing-whitespaces.vim
==================================

This plugin removes trailing whitespace when saving a file.

To exclude specific filetypes add a line to your `~/.vimrc` that sets `b:noStripWhitespace` for filetypes that you want excluded. For example:

```
autocmd FileType ruby,javascript,perl let b:noStripWhitespace=1
```

----
Credit where credit is due:
The majority of this code comes from the [Tydiying
whitespace](http://vimcasts.org/episodes/tidying-whitespace/) episode, from
[vimcasts.org](http://vimcasts.org) and put into a plugin by [Néstor Salceda](http://nestorsalceda.com/).


