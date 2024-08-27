return {
	"nvim-treesitter/nvim-treesitter",
	opts = function()
		local sitter = require("nvim-treesitter.configs")
		sitter.setup{
			ensure_installed = { "c", "cpp", "python", "lua", "bash", "html", "css", "javascript" },
			sync_install = false,
			auto_install = true,
			--ignore_install = { "" },
			highlight = {
				enable = true,
				--disable = { "c", "rust" },

				--[[
				disable = function(lang, buf)
				local max_filesize = 100 * 1024 -- 100 KB
				local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
				if ok and stats and stats.size > max_filesize then
					return true
				end
				--]]

				additional_vim_regex_highlighting = true
			}
		}
	end
}
