require("hardtime").setup()

vim.keymap.set('n', '<leader>htt', '<Cmd>Hardtime toggle<CR>', opts)
vim.keymap.set('n', '<leader>hte', '<Cmd>Hardtime enable<CR>', opts)
vim.keymap.set('n', '<leader>htd', '<Cmd>Hardtime disable<CR>', opts)
