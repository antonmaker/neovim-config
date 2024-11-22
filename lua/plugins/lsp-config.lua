return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				auto_install = true,
				highlight = { enable = true },
				indent = { enale = true },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
      { "ms-jpq/coq_nvim", branch = "coq" },
      { "ms-jpq/coq.artifacts", branch = "artifacts" },
      { 'ms-jpq/coq.thirdparty', branch = "3p" },
    },
    init = function()
      vim.g.coq_settings = {
        auto_start = true,
      }
    end,
		config = function()
			local lsp = require "lspconfig"
      local coq = require "coq"

			lsp.lua_ls.setup(coq.lsp_ensure_capabilities({}))
			lsp.ts_ls.setup(coq.lsp_ensure_capabilities({}))

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
