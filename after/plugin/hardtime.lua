local ok, hardtime = pcall(require, "hardtime")
if (not ok) then return end

hardtime.setup {}

local report = require("hardtime.report")
local plugin = "hardtime"

vim.notify = require("notify")
vim.keymap.set('n', '<leader>htt', function()
  hardtime.toggle()
  vim.notify("Hardtime " .. (hardtime.is_enabled and "enabled" or "disabled"), vim.log.levels.INFO, { title = plugin })
end, opts)
vim.keymap.set('n', '<leader>hte', function()
  hardtime.enable()
  vim.notify("Hardtime enabled", vim.log.levels.INFO, { title = plugin })
end, opts)
vim.keymap.set('n', '<leader>htd', function()
  hardtime.disable()
  vim.notify("Hardtime disabled", vim.log.levels.INFO, { title = plugin })
end, opts)
vim.keymap.set('n', '<leader>htr', function()
  report.report()
end, opts)
