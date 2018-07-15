# hybridlinenumber

In a buffer with "hybrid" line numbers (`:set number relativenumber`), NumberToggle switches to absolute line numbers (`:set number norelativenumber`) automatically when relative numbers don't make sense.

![vim-numbertoggle toggles between "hybrid" and absolute line numbers automatically](https://jeffkreeftmeijer.com/vim-number/toggle.gif)

Relative numbers are used in a buffer that has focus, and is in normal mode, since that's where you move around. They're turned off when you switch out of Vim, switch to another split, or when you go into insert mode.

There is a added function (`NumberToggle()`) using which you can toggle between relative and absolute line numbers if it is necessary to you.
The mapping toggles line number is--
    nnoremap <buffer> <localleader>nt :call NumberToggle()<cr>

## Installation

#### Using [vim-plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'MahbubAlam231/hybridlinenumber'` to `~/.vimrc` or 
  `~/.config/nvim/init.vim`
2. Run `:PlugInstall`
3. `:set number relativenumber`

#### Using [Vundle](https://github.com/VundleVim/Vundle.vim)

1. Add `Plugin 'MahbubAlam231/hybridlinenumber'` to `~/.vimrc`
2. Run `:PluginInstall`
