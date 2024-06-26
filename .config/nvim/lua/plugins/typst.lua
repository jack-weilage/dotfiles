return {
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			servers = {
				typst_lsp = {
					settings = {
						exportPdf = "onType",
						experimentalFormatterMode = "on",
					},
				},
			},
		},
	},
	{
		"kaarmu/typst.vim",
		ft = "typst",
	},
}
