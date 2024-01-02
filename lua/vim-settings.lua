vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set cursorline")
vim.cmd("set scrolloff=8")
vim.cmd("set clipboard=unnamed")

vim.cmd("set rnu")
vim.cmd("set number")
vim.cmd("set nowrap")

vim.keymap.set('i', 'jk', '<Esc>')

vim.keymap.set('n', '<Esc>', ':noh<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('n', '<leader>x', ':q<CR>')

-- Move lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Jump between split panes
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', {silent=true})
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', {silent=true})
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', {silent=true})
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', {silent=true})

-- Window splits
vim.keymap.set('n', '<leader>h', ':vsplit<CR>', {silent=true})
vim.keymap.set('n', '<leader>v', ':split<CR>', {silent=true})

-- Exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
