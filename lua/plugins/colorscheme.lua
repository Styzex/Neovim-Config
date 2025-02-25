return {
  { "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000, 
  },
  { "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
      })
    end
  },
  { "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "Styzex/Sonomin.nvim",
    lazy = false,
    priority = 1000
  },
  {
    "Yazeed1s/minimal.nvim",
    lazy = false,
    priority = 1000
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "warmer"
      })
    end
  },
  {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vague").setup({
        colors = {
          bg = "#0c0c0d"
        }
      })
    end
  },
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("oldworld").setup({
        variant = "oled"
      })
    end
  },


  -- Theme picker
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {"gruvbox", "tokyonight", "poimandres", "minimal", "vague", "Sonomin", "oxocarbon", "onedark", "vscode", "oldworld"},
        livePreview = true,
      })
    end
  }
}
