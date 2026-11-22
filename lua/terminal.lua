local term_buf = nil
local term_win = nil

local function open_term_in_bottom_split(buf)
	vim.cmd("botright split")
	term_win = vim.api.nvim_get_current_win()
	if buf and vim.api.nvim_buf_is_valid(buf) then
		vim.api.nvim_win_set_buf(term_win, buf)
	else
		vim.cmd("terminal")
		term_buf = vim.api.nvim_get_current_buf()
	end
	vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>th", function()
	if term_win and vim.api.nvim_win_is_valid(term_win) then
		vim.api.nvim_win_hide(term_win)
		term_win = nil
	else
		open_term_in_bottom_split(term_buf)
	end
end, { desc = "Toggle terminal split (bottom)" })
