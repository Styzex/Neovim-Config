return {
  -- Mason LSP manager
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  -- LSP Stuff i dont really know
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {"neovim/nvim-lspconfig"},
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer" },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({})
      lspconfig.pylsp.setup({})
    end,
  },

  -- Completion ( Suggestions )
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    priority = 100,
    dependencies = {
      "onsails/lspkind.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
      {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
          require("luasnip.loaders.from_vscode").lazy_load()
        end,
      },
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local lspkind = require("lspkind")
      lspkind.init({})

      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = "nvim_lsp" },
          { name = "path" },
          { name = "buffer" },
          { name = "luasnip" },
        },
        mapping = cmp.mapping.preset.insert({
          ['<TAB>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
          end,
        },
      })
    end,
  },
  
  -- Treesitter
  { 'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "windwp/nvim-ts-autotag",
  },
 
    config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
       ensure_installed = {
         "lua",
         "gitignore",
         "toml",
         "json",
         "rust",
       },
       highlight = { enable = false },
       indent = { enable = true },
       autotag = { enable = false },
       auto_install = false,
      })
      require("nvim-treesitter.install").prefer_git = false
    end,
  },

  -- Rustanalyzer setup and other useful stuff
  {
    "mrcjkb/rustaceanvim",
    lazy = false,
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true
      },
    },
  },

  -- Cargo.toml crate features 
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    config = function()
        require('crates').setup()
    end,
  },

  -- LSP status
  {
    "j-hui/fidget.nvim",
    opts = {},
  },
}
