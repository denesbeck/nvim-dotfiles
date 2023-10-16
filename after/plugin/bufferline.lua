local ok, bufferline = pcall(require, "bufferline")
if (not ok) then return end

bufferline.setup({
  options = {
    separator_style = "slant"
  },
  highlights = {
    separator = {
      fg = '#1a1b26',
    },
    separator_selected = {
      fg = '#1a1b26',
    },
    separator_visible = {
      fg = '#1a1b26',
    },
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<Leader>bc', '<Cmd>BufferLinePickClose<CR>', {})
vim.keymap.set('n', '<Leader>bo', '<Cmd>BufferLineCloseOthers<CR>', {})
vim.keymap.set('n', '<Leader>mp', '<Cmd>BufferLineMovePrev<CR>', {})
vim.keymap.set('n', '<Leader>mn', '<Cmd>BufferLineMoveNext<CR>', {})
vim.keymap.set('n', '<Leader>bp', '<Cmd>BufferLinePick<CR>', {})
