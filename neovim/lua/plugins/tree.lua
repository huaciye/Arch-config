return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"echasnovski/mini.base16"
	},
	opts = function()
		local tree = require("nvim-tree")
		tree.setup{}
	end
}
