vim.g.mapleader = " "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.smarttab = true

vim.o.scrolloff = 2
vim.o.sidescrolloff = 12

require("lua/keybinds")
require("lua/terminal")
require("lua/plugins/neo-tree")
require("lua/plugins/surround")
require("lua/plugins/telescope")
require("lua/plugins/treesitter")
