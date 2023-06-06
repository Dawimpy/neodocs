local M = {}

M.autopairs = function ()
	local config = {
		fast_wrap = {},
		disable_filetype = { "TelescopePrompt", "vim" },
	}

	--Setup autopairs
	require("nvim-autopairs").setup(config)

	--Setup for cmp
	local cmp_autopairs = require "nvim-autopairs.completion.cmp"
	require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
end

M.bufferline = function ()
	local config = {
		options ={
			diagnostics = "nvim_lsp",
			diagnostics_update_in_insert = false,
		},
	}

	require("bufferline").setup(config)
end

return M
