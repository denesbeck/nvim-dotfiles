local ok, package_info = pcall(require, "package-info")
if not ok then
	return
end

package_info.setup({})
