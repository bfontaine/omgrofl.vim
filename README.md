omgrofl.vim
===========

This is a Vim syntax file for the [Omgrofl](http://esolangs.org/wiki/omgrofl)
language.

Install
-------

```bash
wget https://raw.github.com/bfontaine/omgrofl.vim/master/omgrofl.vim \
    -O ~/.vim/syntax/
```

Add the following line to your `.vimrc`:

```vim
au BufNewFile,BufRead *.omgrofl set ft=omgrofl
```

Changelog
---------

* 2012-08-22: support added for the `nope` keyword, negative numbers removed
* 2012-08-18: initial upload
