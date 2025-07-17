return {
	-- LSP manager
	{ "mason-org/mason.nvim", opts = {} },
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = { "pylsp", "lua_ls", "rust_analyzer" },
		},
	},
	{
		-- LSP
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			-- LSP settings
			local lspconfig = require("lspconfig")
			lspconfig.pylsp.setup({})
		end,

		-- Completion
		dependencies = {
			{ "ms-jpq/coq_nvim", branch = "coq" }, -- main
			{ "ms-jpq/coq.artifacts", branch = "artifacts" }, -- snippets
			{ "ms-jpq/coq.thirdparty", branch = "3p" }, -- thirdparty
		},
		init = function()
			vim.g.coq_settings = {
				auto_start = "shut-up",
				keymap = {
					manual_complete = "<C+Tab>",
				},
			}
		end,
	},
	-- Formatter
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "isort", "black" },
					rust = { "rustfmt" },
					javascript = { "prettierd", "prettier", stop_after_first = true },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})
		end,
	},
}
