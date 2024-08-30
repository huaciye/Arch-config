return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = function()
		vim.cmd([[colorscheme tokyonight]])
		local theme = require("tokyonight")

		theme.setup({
			style = "mono",
			styles = {
				functions = {}
			},
			terminal_colors = true,
			-- Change the "hint" color to the "orange" color, and make the "error" color bright red
			on_colors = function(colors)
				colors.hint = colors.orange
				colors.error = "#ff0000"
			end
		})
	end
}
