return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				-- "tsserver",
				"html",
				"htmx",
				"emmet_ls",
				"cssls",
				"tailwindcss",
				"eslint",
				"vtsls",
				"stimulus_ls",
				"jsonls",

				"lua_ls",

				"pyright",

				"ruby_lsp",

				"gopls",
				"templ",

				"yamlls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"gofumpt",
				"goimports",
				"goimports-reviser",
				"golines",
				"gotests",

				"prettierd",
				"stylua",
				"black",
				"isort",
				"rubocop",
			},
		})
	end,
}
