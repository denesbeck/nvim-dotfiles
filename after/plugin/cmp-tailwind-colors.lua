local ok, tailwind = pcall(require, "cmp-tailwind-colors")
if not ok then
	return
end

tailwind.setup({})
