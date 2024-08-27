vim.cmd([[
  augroup CustomTemplates
    autocmd!
    autocmd BufNewFile *.c 0r ~/Learns/c/template.c
    autocmd BufNewFile *.cpp 0r ~/Learns/c++/template.cpp
    autocmd BufNewFile *.sh 0r ~/Learns/shell/template.sh
    autocmd BufNewFile *.lua 0r ~/Learns/lua/template.lua
    autocmd BufNewFile *.service 0r ~/Learns/systemd/template.service
	autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
  augroup END
]])


