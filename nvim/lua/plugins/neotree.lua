return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				hijack_netrw_behavior = "open_default",
				close_if_last_window = false,
			})
			vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle reveal left<CR>", { noremap = true, silent = true })
		end,
	},
}
