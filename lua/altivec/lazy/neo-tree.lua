return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		keys = {
			{ "\\", ":Neotree reveal<CR>", desc = "Neotree reveal", silent = true },
		},
		opts = {
			filesystem = {
				filtered_items = {
					visible = true,
					show_hidden_count = true,
					hide_dotfiles = false,
					hide_gitignored = true,
				},
				follow_current_file = {
					enabled = true,
				},
				window = {
					mappings = {
						["\\"] = "close_window",
					},
				},
			},
		},
	},
}
