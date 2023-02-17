local M = {}

M.autopairs = function ()
	local options = {
		fast_wrap = {},
		disable_filetype = { "TelescopePrompt", "vim" },
	}

	--Setup autopairs
	require("nvim-autopairs").setup(options)

	--Setup for cmp
	local cmp_autopairs = require "nvim-autopairs.completion.cmp"
	require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
end

return M
