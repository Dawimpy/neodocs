local option = {
	ensure_installed = { "lua" },

	highlight = {
		enable = true,
		use_languagetree = true,
	},

	indent = { enable = true },
}

require("nvim-treesitter.configs").setup(option)
