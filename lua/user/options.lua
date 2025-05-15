local options = {
  --vim.opt.syntax = "enable"
  backup = false,               -- creates a backup file
  clipboard = "unnamedplus",    -- allows neovim to access the system clipboard
  cmdheight = 1,                -- more space in the neovim command line for displaying messages. originally 1.
  completeopt = { "menuone", "noselect" }, -- A comma-separated list of options for Insert mode completion
                                -- mostly just for cmp, :help completeopt
  conceallevel = 0,             -- (cont) so that ``` is visible in markdown files
  -- fileencoding = "utf-8",    -- the encoding written to a file
  hlsearch = true,              -- highlight all matches on previous search pattern
  ignorecase = false,           -- ignore case in search patterns
  foldcolumn = "1",             -- controla espacio de margen izquierdo
  colorcolumn = "80",
  mouse = "a",                  -- allow the mouse to be used in neovim
  ruler = true,                 -- crea el separador entre diferentes archivos abiertos con split
  pumheight = 12,               -- pop up menu height
  pumblend = 8,
  showmode = true,              -- show/hide the current mode, things like -- INSERT, VISUAL
  tabstop = 2,                  --  overwrited by softtabstop
  -- display the width of tab as 3 spaces but the tab char remain as a tab
  -- (cont) in other programas the tab is displayed as usual
  -- (cont) for example 8 "spaces".
  -- softtabstop = 2,
  shiftwidth = 2,               -- governs indentation via >> and friends.
  expandtab = true,             -- convert tabs into spaces
  -- change tab into spaces and affect the backspace character too
  showtabline = 1,              -- always show tabs
  smartcase = true,             -- smart case
  smartindent = true,           -- reacts to the syntax/style of the code you are editing (especially for C)
  smarttab = true,              -- Makes tabbing smarter will realize you have 2 vs 4
  splitbelow = true,            -- force all horizontal splits to go below current window
  splitright = true,            -- force all vertical splits to go to the right of current window
  -- autoindent = true,         -- essentially tells vim to apply the indentation of the current line
  swapfile = false,             -- creates a swapfile
  showmatch = true,             -- nos muestra donde terminan parentesis
  hidden = false,               -- Requered to keep multiple buffers open
  termguicolors = true,         -- set term gui colors (most terminals support this)
  undofile = true,              -- enable persistent undo
  writebackup =   false,        -- if a file is being edited by another program 
                                -- (cont) (or was written to file while editing with another program),
                                -- (cont) it is not allowed to be edited
  --cursorline = true,          -- highlight the current line
  number = true,                -- set numbered lines
  -- relativenumber = true,     -- set relative numbered lines
  laststatus = 3,
  showcmd = false,
  numberwidth = 1,              -- set number column width {default 4}
  signcolumn = "yes",           -- always show the sign column, otherwise it would shift the text each time
  updatetime = 300,             -- faster completition
  timeoutlen = 700,             -- this is set by default in 1000
  wrap = true,                  -- display lines as one long line
  scrolloff = 0,
  sidescrolloff = 8,
  guifont = "monospace:h17",    -- the font used in graphical neovim applications
  title = true,
}

vim.opt.fillchars = vim.opt.fillchars + "eob: "
vim.opt.fillchars:append({
  stl = " ",
})

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])

-- vim.g.netrw_banner = 0
-- vim.g.netrw_mouse = 2
