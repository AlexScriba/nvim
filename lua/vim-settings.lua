vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set cursorline")
vim.cmd("set scrolloff=8")

vim.cmd("set rnu")
vim.cmd("set number")
vim.cmd("set nowrap")

vim.g.mapleader = " "

vim.keymap.set('i', 'jk', '<Esc>')

vim.keymap.set('n', '<Esc>', ':noh<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')
