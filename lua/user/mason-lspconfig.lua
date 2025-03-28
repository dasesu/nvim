local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
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

  require("mason-lspconfig").setup {
    ensure_installed = servers,
  }
end

return M

