local status, telescope = pcall(require, "telescope")
if not status then
	return
end
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

local fb_actions = require("telescope").extensions.file_browser.actions

telescope.setup({
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				-- your custom insert mode mappings
				["i"] = {},
				["n"] = {
					-- your custom normal mode mappings
					["l"] = function()
						vim.cmd.normal(vim.api.nvim_replace_termcodes("<CR>", true, true, true))
					end,
					["h"] = fb_actions.goto_parent_dir,
					["/"] = function()
						vim.cmd("startinsert")
					end,
				},
			},
		},
		notify = {
			theme = "ivy",
		},
	},
})

telescope.load_extension("file_browser")
telescope.load_extension("package_info")

vim.keymap.set("n", "<leader>ff", function()
	builtin.find_files()
end)
vim.keymap.set("n", "<leader>fF", function()
	builtin.find_files({ hidden = true, no_ignore = true })
end)
vim.keymap.set("n", "<leader>fw", function()
	builtin.live_grep()
end)
vim.keymap.set("n", "<leader>fW", function()
	builtin.live_grep({
		additional_args = function(args)
			return vim.list_extend(args, { "--hidden", "--no-ignore" })
		end,
	})
end)
vim.keymap.set("n", "<leader>fr", function()
	builtin.oldfiles()
end)
vim.keymap.set("n", "\\\\", function()
	builtin.buffers()
end)
vim.keymap.set("n", ";;", function()
	builtin.resume()
end)
vim.keymap.set("n", "<leader>ft", function()
	builtin.colorscheme()
end)
vim.keymap.set("n", "<leader>gb", function()
	builtin.git_branches()
end)
vim.keymap.set("n", "<leader>gc", function()
	builtin.git_commits()
end)
vim.keymap.set("n", "<leader>gs", function()
	builtin.git_status()
end)

local function browse_files()
	telescope.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		respect_gitignore = false,
		hidden = true,
		grouped = true,
		previewer = false,
		initial_mode = "normal",
		layout_config = { height = 40 },
	})
end

vim.keymap.set("n", "<leader>sf", function()
	browse_files()
end)

vim.keymap.set("n", "<leader>pp", function()
	telescope.extensions.package_info.package_info()
end)

vim.api.nvim_create_user_command("BrowseFiles", function()
	browse_files()
end, {})
