return {
	"neovim/nvim-lspconfig",
	config = function()
		local lsp = require("lspconfig")

		-- c,c++
		lsp.clangd.setup({
			filetypes = { "c", "cpp" },
			cmd = { "clangd" },
			--[[
			root_dir = root_pattern(
				  '.clangd',
				  '.clang-tidy',
				  '.clang-format',
				  'compile_commands.json',
				  'compile_flags.txt',
				  'configure.ac',
				  '.git');
			]]
			--
			--single_file_support = true
		})

		-- python
		lsp.pyright.setup({
			--on_attach = on_attach,
			--flags = lsp_flags,
			--capabilities = capabilities,
			filetypes = { "python" },
			cmd = { "pyright-langserver", "--stdio" },
			settings = {
				python = {
					analysis = {
						autoSearchPaths = true,
						diagnosticMode = "openFilesOnly",
						useLibraryCodeForTypes = true,
						typeCheckingMode = "on",
					},
				},
			},
			--single_file_support = true
		})

		-- lua
		lsp.lua_ls.setup({
			filetypes = { "lua" },
			cmd = { "lua-language-server" },
			log_level = 2,
			--[[
			root_dir = root_pattern(".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git")
			--]]
			--single_file_support = true;
		})

		--bash
		lsp.bashls.setup({
			filetypes = { "sh" },
			cmd = { "bash-language-server", "start" },
			--root_dir = lsp.find_git_ancestor;
			settings = {
				bashIde = {
					globPattern = "*@(.sh|.inc|.bash|.command)",
				},
			},
			--single_file_support = true;

			--markdown
		})
	end,
}
