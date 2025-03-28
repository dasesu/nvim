local M = {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
}

function M.config()
  require("oil").setup {
    float = {
      max_height = 20,
      max_width = 75,
    },
  }
  vim.keymap.set("n", "<leader>-", "<CMD>Oil --float<CR>", { desc = "Oil File explorer" })
end

return M
