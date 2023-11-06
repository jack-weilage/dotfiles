return {
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				svelte = {
					settings = {
						svelte = {
							plugin = {
								svelte = {
									defaultScriptLanguage = "ts",
								},
							},
						},
					},
				},
				marksman = {},
			},
		},
	},
}
