local M = {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
}

function M.config()
  local servers = {
    "lua_ls",    -- lua
    "html",      -- html
    "cssls",     -- css
    "bashls",    -- bash 
    "clangd",    -- cpp 
    "pyright",   -- python
         -- javascript, typescript
  }              

  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }

 automatic_enable = false require("mason-lspconfig").setup {
    automatic_enable = false,
    ensure_installed = servers,
  }
end

return M

