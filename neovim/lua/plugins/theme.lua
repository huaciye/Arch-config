return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = function()
		local theme = require("tokyonight")
		vim.cmd([[colorscheme tokyonight]])
		theme.setup({})
		--[[
		theme.setup = {
			options = {
				style = "moon",
				light_style = "night",
				transparent = false,
				terminal_colors = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},

					sidebars = "dark",
					floats = "dark",
				},
				day_brightness = 0.3,
				dim_inactive = false,
				lualine_bold = false,


                ---@param colors ColorScheme
                on_colors = function(colors) end,

                ---@param highlights tokyonight.Highlights
                ---@param colors ColorScheme
                on_highlights = function(highlights, colors) end,

                cache = true,
                ---@type table<string, boolean|{enabled:boolean}>

				plugins = {
					all = package.loaded.lazy == nil,
					auto = true,
				},
			},
		}
        --]]
	end,
}
