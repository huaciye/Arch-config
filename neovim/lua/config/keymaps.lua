-- 2023.09.29 10:48 Yuwu
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap

local opt = {
	noremap = true,
	silent = true,
}

map.set("n", "<A-Left>", "<C-w>h", opt) --alt+hjkl跳转窗口
map.set("n", "<A-Down>", "<C-w>j", opt)
map.set("n", "<A-Up>", "<C-w>k", opt)
map.set("n", "<A-Right>", "<C-w>l", opt)

map.set("n", "h", "^", opt) -- h，l行首行尾
map.set("n", "l", "g_", opt)
map.set("i", "<C-h>", "<Esc>I", opt) -- ctrl,h,l行首行尾
map.set("i", "<C-l>", "<Esc>A", opt)

map.set("t", "<ESC>", "<C-\\><C-N>", opt)
map.set("t", "<A-Left>", [[<C-\><C-N><C-w>h]], opt) --alt+hjkl跳转窗口
map.set("t", "<A-Down>", [[<C-\><C-N><C-w>j]], opt)
map.set("t", "<A-Up>", [[<C-\><C-N><C-w>k]], opt)
map.set("t", "<A-Right>", [[<C-\><C-N><C-w>l]], opt)

--map.set("n", "<C-Up>", "9k", opt)				--窗口移动
--map.set("n", "<C-Down>", "9j", opt)

map.set("v", "<", "<gv", opt) --连续移动
map.set("v", ">", ">gv", opt)

map.set("n", "s", "", opt) --取消s功能

--map.set("n", "sv", ":vsp<CR>", opt)           --分割窗口
--map.set("n", "sh", ":sp<CR>", opt)
--map.set("n", "sc", "<C-w>c", opt)           --关闭窗口,current,other
--map.set("n", "so", "<C-w>o", opt)

map.set("n", "nh", ":nohl<CR>", opt) --取消高亮

map.set("n", "<C-Right>", ":BufferLineCyclePrev<CR>", opt) -- bufferline 左右Tab切换
map.set("n", "<C-Left>", ":BufferLineCycleNext<CR>", opt)
map.set("n", "<leader>q", ":BufferLinePickClose<CR>", opt)

map.set("n", "<leader>t", ":NvimTreeToggle<CR>", opt) --tree

map.set("n", "<leader>o", ":FloatermToggle<CR>", opt) --terminal
map.set("t", "<leader>h", [[<C-\><C-N>:FloatermHide<CR>]], opt)

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
--map.set('n', '<A-e>', vim.diagnostic.open_float)
--map.set('n', '[d', vim.diagnostic.goto_prev)
--map.set('n', ']d', vim.diagnostic.goto_next)
--map.set('n', '<A-q>', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
		--[[
    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    map.set('n', 'gD', vim.lsp.buf.declaration, opts)
    map.set('n', 'gd', vim.lsp.buf.definition, opts)
    map.set('n', 'K', vim.lsp.buf.hover, opts)
    map.set('n', 'gi', vim.lsp.buf.implementation, opts)
    map.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    map.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    map.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    map.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    map.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    map.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    map.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    map.set('n', 'gr', vim.lsp.buf.references, opts)
    map.set('n', '<leader>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
		--]]
	end,
})
