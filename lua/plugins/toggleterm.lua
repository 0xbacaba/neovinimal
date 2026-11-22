vim.pack.add({
	"https://github.com/akinsho/toggleterm.nvim",
})

vim.keymap.set("n", "<leader>th", "<Cmd>ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<leader>tv", "<Cmd>ToggleTerm direction=vertical<CR>")

require("toggleterm").setup({
	auto_scroll = false,
	highlights = {
		Normal = { link = "Normal" },
		NormalNC = { link = "NormalNC" },
		NormalFloat = { link = "NormalFloat" },
		FloatBorder = { link = "FloatBorder" },
		StatusLine = { link = "StatusLine" },
		StatusLineNC = { link = "StatusLineNC" },
		WinBar = { link = "WinBar" },
		WinBarNC = { link = "WinBarNC" },
	},
	size = 10,
	hidden = false,
	on_create = function(_)
		vim.opt_local.foldcolumn = "0"
		vim.opt_local.signcolumn = "no"
	end,
	shading_factor = 2,
	float_opts = { border = "rounded" },
})
