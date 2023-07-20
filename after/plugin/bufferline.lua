local ok, bufferline = pcall(require, "bufferline")
if (not ok) then return end

bufferline.setup({
  options = {
    separator_style = "slant"
  }
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
