local mason_ok, mason = pcall(require, "mason")
if (not mason_ok) then return end

local lspconfig_ok, lspconfig = pcall(require, "mason-lspconfig")
if (not lspconfig_ok) then return end

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
