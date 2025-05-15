local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {

    -- :TSUpdate for update installed languages
    -- :TSUpdate {language}

    -- If the language is already supported by nvim-treesitter, you can install it with
    -- :TSInstall <language_to_install>

    ensure_installed = {
      "lua",
      "html",
      "css",
      "javascript",
      "python",
      "cpp",
      "markdown",
      "bash",
      "vimdoc",
      "luadoc",
      "vim"
    },
    -- ensure_installed = {"html", "css", "javascript", "python", "cpp", "markdown", "bash" },
    -- auto_install = true, -- e.g: if i open haskell treesitter would install the respective parser

    -- If i want to unistall a language
    -- :TSUninstall {language}
    -- :TSUninstall all

    -- for inspect the tree 
    -- :InspectTree

    highlight = {
      enable = true, 
      disable = "help"
    },
    indent = { enable = true },
  }
end

return M

