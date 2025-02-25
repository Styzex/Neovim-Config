return {

  -- Luarocks
  { 'vhyrro/luarocks.nvim',
    priority = 1001, -- this plugin needs to run before anything else
    opts = {
      rocks = { 'magick' },
    },
  },

  -- Oil file manager
  {'stevearc/oil.nvim',
    opts = {},
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require("oil").setup({
        default_file_explorer = true,
      })
    end,
  },

  -- Telescope
  { 'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', "debugloop/telescope-undo.nvim" },
    config = function()
      require("telescope").setup({
        -- the rest of your telescope config goes here
        extensions = {
          undo = {},
        },
      })
      require("telescope").load_extension("undo")
      -- optional: vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
    end,
   },

  -- Comment
  { 'numToStr/Comment.nvim',
    opts = {},
    config = function()
      require('Comment').setup({})
    end,
  },

  -- Conform
  { "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local conform = require("conform")
      conform.setup({
        formatters_by_ft = {
          lua = { "stylua" },
          rust = { "rustfmt" }
        },
    })
    end,
  },

  -- Pretty hover
  { "Fildo7525/pretty_hover",
    event = "LspAttach",
    opts = {}
  },

  -- My ows plugins
  -- :3
 
  -- RandTheme
  --[[
  { "Styzex/RandTheme.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("randtheme").setup({
        reroll_keymap = "<leader>tr",
        change_on_startup = true,
        print_theme_name = true,
        include_builtin_themes = false,
      })
    end,
  },
  ]]
}
