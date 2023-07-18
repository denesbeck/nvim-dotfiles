local keymap = vim.keymap

-- Normal --
-- Move lines
keymap.set("n", "<C-j>", "<cmd>m .+1<CR>")
keymap.set("n", "<C-k>", "<cmd>m .-2<CR>")

-- Telescope
-- Find files
keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end)
keymap.set("n", "<leader>fF", function() require("telescope.builtin").find_files { hidden = true, no_ignore = true } end)
-- Find words
keymap.set("n", "<leader>fw", function() require("telescope.builtin").live_grep() end)
keymap.set("n", "<leader>fW", function()
      require("telescope.builtin").live_grep {
        additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
      }
    end)
keymap.set("n", "<leader>fr", function() require("telescope.builtin").oldfiles() end)

-- Packer
keymap.set("n", "<leader>p", "<cmd>PackerSync<CR>")

-- Mason
keymap.set("n", "<leader>m", "<cmd>Mason<CR>")

-- Insert --
keymap.set("i", "jj", "<ESC>")
