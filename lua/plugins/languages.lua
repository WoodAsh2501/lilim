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
			{ "ms-jpq/coq_nvim", branch = "coq" }, -- main
			{ "ms-jpq/coq.artifacts", branch = "artifacts" }, -- snippets
			{ "ms-jpq/coq.thirdparty", branch = "3p" }, -- thirdparty
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
	-- Formatter
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "isort", "black" },
					rust = { "rustfmt", lsp_format = "fallback" },
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
