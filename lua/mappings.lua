local keymap = vim.keymap

-- Normal --
-- Move lines
keymap.set("n", "<C-j>", "<cmd>m .+1<CR>")
keymap.set("n", "<C-k>", "<cmd>m .-2<CR>")

-- Lazy
keymap.set("n", "<leader>p", "<cmd>Lazy<CR>")

-- Mason
keymap.set("n", "<leader>m", "<cmd>Mason<CR>")

-- Close buffer
keymap.set("n", "<leader>c", "<cmd>bw<CR>")

-- Reset search highlight
keymap.set("n", "//", "<cmd>nohlsearch<CR>")

-- Split window
keymap.set('n', 'sh', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', '<C-h>', '<cmd>TmuxNavigateLeft<CR>')
keymap.set('', '<C-k>', '<cmd>TmuxNavigateUp<CR>')
keymap.set('', '<C-j>', '<cmd>TmuxNavigateDown<CR>')
keymap.set('', '<C-l>', '<cmd>TmuxNavigateRight<CR>')

-- Resize window
keymap.set('n', '<M-h>', '<C-w><')
keymap.set('n', '<M-l>', '<C-w>>')
keymap.set('n', '<M-k>', '<C-w>+')
keymap.set('n', '<M-j>', '<C-w>-')

-- Insert --
-- Leave insert mode
keymap.set("i", "jj", "<ESC>")
