# lineno.vim

This very simple vim plugin provides commands to simultaneously set the
`number` and `relativenumber` vim options and to switch between different
combinations of `number` and `relativenumber`.

## Installation

You can use your favourite installation method. With Tim Pope's
[pathogen](https://github.com/tpope/vim-pathogen) it is simply a question of
cloning the `lineno.vim` repository into your vim bundle directory.

    cd ~/.vim/bundle
    git clone git://github.com/heindsight/lineno.vim

## Usage

The `:SetLineNoMode` command simultaneously sets the `number` and
`relativenumber` options in vim. It takes a single integer argument which
determines the line numbering mode:

0. No numbering (`'number'` and `'relativenumber'` both unset)
1. Absolute numbering (`'number'` set, `'relativenumber'` unset)
2. Relative numbering (`'number'` unset, `'relativenumber'` set)
3. Relative numbering with absolute numbering for cursor line (`'number'` and
   `'relativenumber'` both set)

Use `:SwitchLineNoMode` to cycle between the modes listed above.  You may want
to define a mapping for this command in your `~/.vimrc`:

```vim
   nmap <silent><F2> :SwitchLineNoMode<CR>
```

## License

Copyright (c) 2015, Heinrich Kruger. Distributed under the MIT license (see the
LICENSE file).
