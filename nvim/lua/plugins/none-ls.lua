return {
	'nvimtools/none-ls.nvim',
	config = function()
		local null_ls = require 'null-ls'
		null_ls.setup {
			sources = {
				-- formatting
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				-- diagnostics
				null_ls.builtins.diagnostics.eslint_d,
				-- code actions
				null_ls.builtins.code_actions.eslint_d,
			},
		}
	end,
}
