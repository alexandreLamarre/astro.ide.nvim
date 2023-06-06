return {
	-- Add the community repository of plugin specifications
	"AstroNvim/astrocommunity",
	-- example of imporing a plugin, comment out to use it or add your own
	-- available plugins can be found at https://github.com/AstroNvim/astrocommunity

	{ import = "astrocommunity.colorscheme.catppuccin" },
	{ import = "astrocommunity.pack.rust" },
	{ import = "astrocommunity.pack.go" },
	{ import = "copilot.lua" },
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
	{
		"Saecki/crates.nvim",
		opts = {},
	},
	{
		"copilot.lua",
		opts = {
			suggestion = {
				keymap = {
					accept = "<C-l>",
					accept_word = false,
					accept_line = false,
					next = "<C-.>",
					prev = "<C-,>",
					dismiss = "<C/>",
				},
			},
		},
	},
	-- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
