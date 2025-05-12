-- Para envolver entre comillas simple texto seleccionado: <leader>'
vim.cmd("vnoremap <leader>' o<esc>i'<esc>gvo<esc>a'")

-- Para envolver entre comillas dobles texto seleccionado: <leader>"
vim.cmd("vnoremap <leader>\" o<esc>i\"<esc>gvo<esc>a\"")

-- Conjunto de shortcuts aplicados a archivos markdown
vim.cmd("augroup mdshortcuts")
vim.cmd("autocmd!")

-- Coloca en la linea el nombre del archivo simplificando su estructura.
vim.cmd("autocmd FileType markdown nnoremap <buffer> <localleader>mm ddO<esc>\"%pF/ld^$F.C")
vim.cmd("augroup END")
