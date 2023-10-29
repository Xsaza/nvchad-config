local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "lua-language-server",
        "json-lsp",
        "dockerfile-language-server",
        "yaml-language-server",
        "html-lsp",
        "css-lsp",
        "emmet-ls",
        "eslint_d",
        "prettierd",
        "stylua"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function ()
        require "custom.configs.null-ls"
      end
    },
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
     "rbong/vim-flog",
      lazy = true,
      cmd = { "Flog", "Flogsplit", "Floggit" },
      dependencies = {
        "tpope/vim-fugitive",
      },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
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
        "rust"
      },
      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = false,
        filetypes = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "jsx", "tsx" }
      },
    },
  },
}

return plugins
