-- local keymap = vim.keymap.set
-- local opts = { noremap = true, silent = true }

-- set spell check for spanish
-- keymap("n", "<leader>s", ":setlocal spell spelllang=es<CR>", opts )
-- keymap("n", "<leader>so", ":set nospell<CR>", opts)

vim.cmd("vnoremap <leader>' o<esc>i'<esc>gvo<esc>a'")
vim.cmd("vnoremap <leader>\" o<esc>i\"<esc>gvo<esc>a\"")

