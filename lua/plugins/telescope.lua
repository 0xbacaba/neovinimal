vim.pack.add({
	{
		src = "https://github.com/nvim-telescope/telescope.nvim",
		tag = "0.1.8",
	},
})

vim.keymap.set("n", "<leader>ff", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fw", "<Cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fw", "<Cmd>Telescope live_grep<CR>")

require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			".*%.o",
			".*%.class",
			".*%.aux",
			".*%.log",
			".*%.synctex.gz",
			".*%.fls",
			".*%.fdb_latexmk",
			".*%.bbl",
			".*%.blg",
			".*%.out",
			".*%.bcf",
			".*%.bib.bbl",
			".*%.bib.blg",
			".*%.tex.bbl",
			".*%.tex.blg",
			".*%.upa",
			".*%.upb",
			".*%.run.xml",
			".*%.toc",
			".*%.lof",
			".*%.lot",
			".*%.dvi",
			".*%.out.ps",
		},
	},
})
