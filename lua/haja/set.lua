vim.o.tabstop=2
vim.o.shiftwidth=2
vim.o.expandtab=true
vim.o.smartab=true

vim.o.scrolloff=10
vim.o.autochdir=true

vim.cmd.colorscheme('desert')

vim.o.wildmode='longest:full'
vim.o.wildignorecase=true

-- keep undo history
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
