return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = function()
		local buf = require("bufferline")

		vim.opt.termguicolors = true
		buf.setup({
			options = {
				--使用 :h bufferline-configuration
				mode = "buffers",
				themable = true,
				indicator = {
					--icon = '▎', -- this should be omitted if indicator style is not 'icon'
					--style = 'icon' | 'underline' | 'none',
					style = "underline",
				},

				buffer_close_icon = "󰅖",
				modified_icon = "●",
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",

				color_icons = true,
				offsets = {
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "center",
				},

				get_element_icon = function(element)
					local icon, hl =
						require("nvim-web-devicons").get_icon_by_filetype(element.filetype, { default = false })
					return icon, hl
				end,

				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				show_tab_indicators = true,
				show_duplicate_prefix = false,
				duplicates_across_groups = true,
				persist_buffer_sort = true,
				move_wraps_at_ends = false,

				--separator_style = "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
				separator_style = "slant",

				enforce_regular_tabs = false,
				always_show_bufferline = true,
				auto_toggle_bufferline = true,

				hover = {
					enabled = true,
					delay = 200,
					reveal = { "close" },
				},

				style_preset = {
					--buf.style_preset.no_italic,
					buf.style_preset.no_bold,
				},
			},
		})
	end,
}
