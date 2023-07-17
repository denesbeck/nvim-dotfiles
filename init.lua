require("highlights")
require("options")
require("plugins")
require("mappings")

vim.cmd("colorscheme tokyonight-storm")

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
