return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = function()
		local buf = require("bufferline")

		vim.opt.termguicolors = true
		buf.setup({
			options = {
				hover = {
					enabled = true,
					delay = 200,
					reveal = {'close'}
				},
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neo-tree",
						highlight = "Directory",
						text_align = "left",
					},
				},
			},
		})
	end,
}
