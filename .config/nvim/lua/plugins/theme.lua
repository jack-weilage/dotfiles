return {
	{
		"Shatur/neovim-ayu",
		name = "ayu",
		opts = {
			overrides = {
				LineNr = { fg = "#444B55" },
				LspInlayHint = { fg = "#3B404A" },
				LspCodeLens = { fg = "#3B404A" },
			},
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = false,
	},
	{
		"folke/tokyonight.nvim",
		enabled = false,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "ayu",
		},
	},
}
