local plugins = {
  {
    "numToStr/Comment.nvim",
    config = function(_, opts)
      opts.pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook()
      require("Comment").setup(opts)
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = {
      mapping = {
        ["<c-k>"] = require("cmp").mapping.complete(),
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
        "stylua",
        "eslint_d",
      },
    },
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      require "custom.configs.mason-lspconfig"
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require "custom.configs.null-ls"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "sindrets/diffview.nvim",
    lazy = false,
    config = function()
      require "custom.configs.diffview"
    end,
  },

  {
    "rbong/vim-flog",
    cmd = { "Flog", "Flogsplit", "Floggit" },
    dependencies = {
      "tpope/vim-fugitive",
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "rust",
      },
      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = false,
        filetypes = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "jsx", "tsx" },
      },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        width = 50,
      },
    },
  },
  {
    "nvim-pack/nvim-spectre",
    config = function()
      require("spectre").setup()
    end,
  },
  -- {
  --   "rcarriga/nvim-dap-ui",
  --   lazy = false,
  --   dependencies = {
  --     "mfussenegger/nvim-dap",
  --   },
  --   config = function()
  --     require "custom.configs.dapui"
  --   end,
  -- },
  -- {
  --   "mxsdev/nvim-dap-vscode-js",
  --   lazy = false,
  --   dependencies = {
  --     "mfussenegger/nvim-dap",
  --   },
  --   config = function()
  --     require "custom.configs.js-debug-adapter"
  --   end,
  -- },
  -- {
  --   "mfussenegger/nvim-dap",
  --   lazy = false,
  -- },
}

return plugins
