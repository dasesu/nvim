local M = {
  "xiyaowong/nvim-transparent",
  lazy = false,
  -- priority = 1000,
}

function M.config()
  local keymap = vim.keymap.set
  local opts = { noremap = true, silent = true }
  local wk = require("which-key")
  wk.add {
    { "<leader>pt", ":TransparentToggle<cr>", desc = " Transparent Background",
      icon = {
        icon = " ",
        color = "grey",
      },
    },

  }

      -- transparency toggle
  -- keymap("n", "<Leader>pb", ":TransparentToggle<CR>", opts)
  

end

return M
