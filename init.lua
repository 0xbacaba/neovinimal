vim.g.mapleader = " "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.o.scrolloff = 2
vim.o.sidescrolloff = 12

require("keybinds")
require("plugins/statusline")
require("plugins/neo-tree")
require("plugins/surround")
require("plugins/telescope")
require("plugins/treesitter")
require("plugins/toggleterm")
