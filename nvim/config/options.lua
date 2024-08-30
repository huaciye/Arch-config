-- 2023.09.29 09:58 Yuwu

local opt = vim.opt --局部变量

opt.encoding = "UTF-8" --字符标准
opt.fileencoding = "utf-8"

opt.number = true --行号
opt.relativenumber = false

opt.tabstop = 4 --缩进,>><<
opt.shiftwidth = 4
opt.softtabstop = 4

opt.autoindent = true --新行对齐当前行
opt.smartindent = true

opt.wrap = false --折行

opt.cursorline = true --高亮光标行

opt.mouse = "a" --鼠标支持

opt.clipboard = "unnamedplus" --使用系统剪切板

opt.ignorecase = true --搜索大小写不敏感，除非包含大写
opt.smartcase = true

opt.hlsearch = true --搜索高亮

opt.incsearch = true --实时搜索

opt.cmdheight = 1 --命令行高度

opt.backup = false --备份文件
opt.writebackup = false
opt.swapfile = false

opt.splitright = true --窗口分割位置
opt.splitbelow = true

opt.signcolumn = "yes" --左侧图标指示列
opt.termguicolors = true

opt.wildmenu = false --补全增强
--opt.pumheight = 10
