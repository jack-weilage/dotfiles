return {
	"t-troebst/perfanno.nvim",
	cmd = {
		"PerfLoadCallGraph",
		"PerfPickEvent",
		"PerfAnnotate",
		"PerfToggleAnnotations",
		"PerfAnnotateSelection",
		"PerfAnnotateFunction",
		"PerfHottestLines",
		"PerfHottestSymbols",
	},
	opts = function()
		local util = require("perfanno.util")
		local bgcolor = vim.fn.synIDattr(vim.fn.hlID("Normal"), "bg", "gui")

		return {
			-- Creates a 10-step RGB color gradient beween bgcolor and "#CC3300"
			line_highlights = util.make_bg_highlights(bgcolor, "#CC3300", 10),
			vt_highlight = util.make_fg_highlight("#CC3300"),
		}
	end,
}
