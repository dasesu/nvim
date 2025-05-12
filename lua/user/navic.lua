local M = {
  "SmiteshP/nvim-navic",
  dependencies = {
    "neovim/nvim-lspconfig"
  },
  commit = "8649f694d3e76ee10c19255dece6411c29206a54",
}

function M.config()
  local icons = require "user.icons"
  local navic = require("nvim-navic")
  navic.setup {
    icons = icons.kind,
    highlight = true,
    lsp = {
      auto_attach = true,
    },
    click = true,
    separator = " " .. icons.ui.ChevronRight .. " ",
    depth_limit = 0,
    depth_limit_indicator = "..",
  }
end

return M


