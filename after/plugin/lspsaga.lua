local ok, lspsaga = pcall(require, "lspsaga")
if (not ok) then return end

lspsaga.setup {}

vim.keymap.set('n', '<leader>pd', '<Cmd>Lspsaga peek_definition<CR>')
vim.keymap.set('n', '<leader>jn', '<Cmd>Lspsaga diagnostic_jump_next<CR>')
vim.keymap.set('n', '<leader>jp', '<Cmd>Lspsaga diagnostic_jump_next<CR>')
vim.keymap.set('n', '<leader>lf', '<Cmd>Lspsaga finder<CR>')
vim.keymap.set('n', '<leader>tt', '<Cmd>Lspsaga term_toggle<CR>')
vim.keymap.set('n', '<leader>ld', '<Cmd>Lspsaga show_line_diagnostics<CR>')
vim.keymap.set('n', '<leader>hd', '<Cmd>Lspsaga hover_doc<CR>')
vim.keymap.set('n', '<leader>rn', '<Cmd>Lspsaga rename<CR>')
