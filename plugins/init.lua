return {
  -- themes
  -- add dracula
  { "Mofiqul/dracula.nvim" },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },

  {
  "turbio/bracey.vim",
  cmd = {"Bracey", "BracyStop", "BraceyReload", "BraceyEval"},
  build = "npm install --prefix server",
  },
  -- autocomplete
  ["hrsh7th/cmp-nvim-lua"] = { after = "cmp_luasnip" },

  ["tzachar/cmp-tabnine"] = {
    requires = "hrsh7th/nvim-cmp",
    after = "nvim-cmp",
    run = "./install.sh",
    config = function()
      require("cmp_tabnine.config"):setup {
        max_lines = 1000,
        max_num_results = 20,
        sort = true,
        run_on_every_keystroke = true,
        snippet_placeholder = "..",
        ignored_file_types = {},
        show_prediction_strength = false,
      }
      require("core.utils").add_cmp_source { name = "cmp_tabnine", priority = 1000, max_item_count = 7 }
    end,
  },
  -- enhancement
  ["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
}
