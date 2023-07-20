local ok1, mason = pcall(require, "mason")
if (not ok1) then return end

local ok2, lspconfig = pcall(require, "mason-lspconfig")
if (not ok2) then return end

require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})
require("mason-lspconfig").setup()
