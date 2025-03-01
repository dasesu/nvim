local M = {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvimtools/none-ls-extras.nvim",
  },
}

function M.config()
  local null_ls = require("null-ls")

  local formatting = null_ls.builtins.formatting
  -- local diagnostics = null_ls.builtins.diagnostics -- not used yet

  null_ls.setup({
    debug = false,
    sources = {

      -- JavaScript · TypeScript · Flow · JSX · JSON
      -- CSS · SCSS · Less
      -- HTML · Vue · Angular
      -- GraphQL · Markdown · YAML
      -- null_ls.builtins.formatting.prettier,
      formatting.prettier,

      -- python
      formatting.black,

      -- Spell suggestions completion source.
      -- local sources = { null_ls.builtins.completion.spell }
      null_ls.builtins.completion.spell,

      -- python
      require("none-ls.diagnostics.flake8"),

      -- Checks commonly misspelled English words in source files.
      -- diagnostics.misspell,

      -- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim

      -- A tool for fast static analysis of C/C++ code.
      -- local sources = { null_ls.builtins.diagnostics.cppcheck }
      -- diagnostics.cppcheck,

    },
  })
end

return M
