return {
	-- Color theme
	{ "kepano/flexoki-neovim", name = "flexoki" },
	{
		"cdmill/neomodern.nvim",
		config = function()
			require("neomodern").setup({})
			require("neomodern").load()
		end,
	},
	{
		"metalelf0/black-metal-theme-neovim",
		config = function()
			require("black-metal").setup({})
			require("black-metal").load()
		end,
	},
}
