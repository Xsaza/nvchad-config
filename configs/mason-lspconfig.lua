require("mason-lspconfig").setup({
  ensure_installed = {
    "tsserver",
    "lua_ls",
    "jsonls",
    "html",
    "cssls",
  },
});
