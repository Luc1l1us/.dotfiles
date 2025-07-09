-- vim.cmd.colorscheme("tokyonight-night")
vim.cmd.colorscheme("abscs")
-- vim.cmd([[colorscheme tokyonight]])
vim.api.nvim_set_option_value("clipboard", "wl-clipboard", opts)
--vim.opt.clipboard = 'unnamedplus'

vim.opt.nu = true -- set line numbers -- set line numbers
-- vim.opt.relativenumber = true -- use relative line numbers

-- set tab size to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.incsearch = true -- incremental search

vim.opt.termguicolors = true
