local keymap = vim.keymap

-- Normal --
-- Move lines
keymap.set("n", "<C-j>", "<cmd>m .+1<CR>")
keymap.set("n", "<C-k>", "<cmd>m .-2<CR>")

-- Packer
keymap.set("n", "<leader>p", "<cmd>PackerSync<CR>")

-- Mason
keymap.set("n", "<leader>m", "<cmd>Mason<CR>")

-- Close buffer
keymap.set("n", "<leader>c", "<cmd>bd<CR>")

-- Insert --
-- Leave insert mode
keymap.set("i", "jj", "<ESC>")
