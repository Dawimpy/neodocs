local options = {
	PATH = skip,

	ui = {
		check_outdated_packages_on_open = true,
	},
}

require("mason").setup(options)
