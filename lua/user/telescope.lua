local M = {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      lazy = true,
    },
    {
      "nvim-lua/plenary.nvim",
      lazy = true,
    },
  },
}

function M.config()
  local keymap = vim.keymap.set
  local opts = { noremap = true, silent = true }
  -- word suggets with telescope
  keymap("n", "z-", ":Telescope spell_suggest<CR>", opts)

  local wk = require("which-key")
  wk.add {
    -- {
    --   "<leader>f",
    --   group = " Telescope",
    --   icon = {
    --     icon = "",
    --     color = "azure",
    --   },
    -- },
    { "<leader>tx", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>tc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
    { "<leader>tf", "<cmd>Telescope find_files<cr>", desc = "Find files",
      icon = {
        icon = "󰈞",
        color = "azure",
      },
    },
    -- { "<leader>th", "<cmd>Telescope help_tags<cr>", desc = "Help" },
    { "<leader>tj", "<cmd>Telescope jumplist previewer=false<cr>", desc = "Jumps" },
    { "<leader>tl", "<cmd>Telescope resume<cr>", desc = "Last Search" },
    { "<leader>tr", "<cmd>Telescope oldfiles<cr>", desc = "Recent File" },
    { "<leader>tt", "<cmd>Telescope live_grep<cr>", desc = "Find Text" },
  }

  local icons = require("user.icons")
  local actions = require("telescope.actions")

  require("telescope").setup({
    defaults = {
      prompt_prefix = icons.ui.Telescope .. " ",
      selection_caret = icons.ui.Forward .. " ",
      entry_prefix = "   ",
      initial_mode = "insert",
      selection_strategy = "reset",
      path_display = { "smart" },
      color_devicons = true,
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob=!.git/",
      },

      mappings = {
        i = {
          ["<C-n>"] = actions.cycle_history_next,
          ["<C-p>"] = actions.cycle_history_prev,

          ["<down>"] = actions.move_selection_next,
          ["<up>"] = actions.move_selection_previous,
        },
        n = {
          ["<esc>"] = actions.close,
          ["j"] = actions.move_selection_next,
          ["k"] = actions.move_selection_previous,
          ["q"] = actions.close,
        },
      },
    },
    pickers = {
      live_grep = {
        theme = "dropdown",
      },

      grep_string = {
        theme = "dropdown",
      },

      find_files = {
        theme = "dropdown",
        previewer = false,
      },
      buffers = {
        theme = "dropdown",
        previewer = false,
        -- initial_mode = "normal",
        -- mappings = {
        --   i = {
        --     ["<C-d>"] = actions.delete_buffer,
        --   },
        --   n = {
        --     ["dd"] = actions.delete_buffer,
        --   },
        -- },
      },
      planets = {
        show_pluto = true,
        show_moon = true,
      },

      colorscheme = {
        enable_preview = true,
      },

      lsp_references = {
        theme = "dropdown",
        initial_mode = "normal",
      },

      lsp_definitions = {
        theme = "dropdown",
        initial_mode = "normal",
      },

      lsp_declarations = {
        theme = "dropdown",
        initial_mode = "normal",
      },

      lsp_implementations = {
        theme = "dropdown",
        initial_mode = "normal",
      },
    },
    extensions = {
      fzf = {
        fuzzy = true,                   -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true,    -- override the file sorter
        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
      },
    },
  })
end

return M
