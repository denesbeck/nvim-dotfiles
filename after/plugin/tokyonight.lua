local ok, tokyonight = pcall(require, "tokyonight")
if not ok then
	return
end

tokyonight.setup({
	style = "night",
	transparent = true,
	styles = {
		sidebars = "transparent",
		floats = "transparent",
	},
})
