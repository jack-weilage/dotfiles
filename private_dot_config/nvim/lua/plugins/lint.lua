return {
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				svelte = { "eslint" },
				markdown = { "markdownlint" },
				yaml = { "actionlint" },
			},
		},
	},
}
