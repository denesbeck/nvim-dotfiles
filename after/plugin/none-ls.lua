local ok, none_ls = pcall(require, "null-ls")
if not ok then
	return
end

local sources = {
	none_ls.builtins.formatting.gofumpt,
	none_ls.builtins.formatting.goimports_reviser,
	none_ls.builtins.formatting.prettierd,
	none_ls.builtins.formatting.rustywind,
	none_ls.builtins.formatting.shfmt.with({
		extra_args = { "-i", "2", "-ci" },
	}),
	none_ls.builtins.formatting.stylua,
	none_ls.builtins.diagnostics.eslint_d,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
none_ls.setup({
	sources = sources,
	-- you can reuse a shared lspconfig on_attach callback here
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
					vim.lsp.buf.format({ bufnr = bufnr, async = false })
				end,
			})
		end
	end,
})
