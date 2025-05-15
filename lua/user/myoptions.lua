-- Para envolver entre comillas simple texto seleccionado: <leader>'
vim.cmd("vnoremap <leader>' o<esc>i'<esc>gvo<esc>a'")

-- Para envolver entre comillas dobles texto seleccionado: <leader>"
vim.cmd("vnoremap <leader>\" o<esc>i\"<esc>gvo<esc>al\"")

-- Conjunto de shortcuts aplicados a archivos markdown
vim.cmd("augroup mdshortcuts")
vim.cmd("autocmd!")

vim.cmd("autocmd FileType markdown :set textwidth=80")

-- Coloca en la linea el nombre del archivo simplificando su estructura.
vim.cmd("autocmd FileType markdown nnoremap <buffer> <localleader>mm ddO<esc>\"%pF/ld^$F.C<esc>:w<cr>")

-- Cambia el textwidth de 80 a 40 y vice versa.
vim.cmd("augroup END")
