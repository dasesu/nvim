local M = {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "AndreM222/copilot-lualine",
  },
}



function M.config()
  require("lualine").setup {
    options = {
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      ignore_focus = { "NvimTree" },
    },
    sections = {
      lualine_a = {"branch"},
      lualine_b = { },
      lualine_c = { "diagnostics" },
      lualine_x = { "", "filetype" },
      lualine_y = { "location" },
      lualine_z = {"progress"},
    },
    extensions = { "quickfix", "man", "fugitive" },
  }
end





return M
