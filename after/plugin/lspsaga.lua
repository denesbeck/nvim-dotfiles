local ok, lspsaga = pcall(require, "lspsaga")
if not ok then
	return
end

lspsaga.setup({})

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>pd", "<Cmd>Lspsaga peek_definition<CR>", opts)
vim.keymap.set("n", "<leader>jn", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "<leader>jp", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "<leader>fd", "<Cmd>Lspsaga finder<CR>", opts)
vim.keymap.set("n", "<leader>tt", "<Cmd>Lspsaga term_toggle<CR>", opts)
vim.keymap.set("n", "<leader>ld", "<Cmd>Lspsaga show_line_diagnostics<CR>", opts)
vim.keymap.set("n", "<leader>hd", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "<leader>rn", "<Cmd>Lspsaga rename<CR>", opts)
