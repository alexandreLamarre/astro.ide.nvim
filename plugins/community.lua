return {
	-- Add the community repository of plugin specifications
	"AstroNvim/astrocommunity",
	-- example of imporing a plugin, comment out to use it or add your own
	-- available plugins can be found at https://github.com/AstroNvim/astrocommunity

	{ import = "astrocommunity.colorscheme.catppuccin" },
	{ import = "astrocommunity.pack.rust" },
	{ import = "astrocommunity.pack.go" },
	{
		"catppuccin",
		opts = {
			integrations = {
				sandwich = true,
				noice = true,
				mini = true,
				leap = true,
				markdown = true,
				neotest = true,
				cmp = true,
				overseer = true,
				lsp_trouble = true,
				ts_rainbow2 = true,
			}
		}
	},
	-- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
