local M = {
  "windwp/nvim-autopairs",
}

M.config = function()
  require("nvim-autopairs").setup {
    check_ts = true,
    -- disable_filetype = { "TelescopePrompt", "spectre_panel", "oil", "note" },
    disable_filetype = { "TelescopePrompt", "oil" },
  }
end

return M
