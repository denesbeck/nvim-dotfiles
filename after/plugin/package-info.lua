local ok, package_info = pcall(require, "package-info")
if (not ok) then return end

package_info.setup {}

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>pp', '<Cmd>PackageInfoChangeVersion<CR>', opts)
