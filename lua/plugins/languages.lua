return {
	{
	-- LSP
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function() 
			-- LSP settings
		end,
	
	-- Completion	
		dependencies = {
			{ "ms-jpq/coq_nvim", branch = "coq" },				-- main
			{ "ms-jpq/coq.artifacts", branch = "artifacts" },	-- snippets
			{ 'ms-jpq/coq.thirdparty', branch = "3p" }			-- thirdparty
		},
		init = function()
			vim.g.coq_settings = {
				auto_start = true,
				keymap = { 
					manual_complete = "<C+Tab>", 
				},
			}
		end,
	},
}
