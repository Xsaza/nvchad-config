local config = require "plugins.configs.lspconfig"
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require "lspconfig"
--
local servers = {
  "tsserver",
  "lua_ls",
  "jsonls",
  "html",
  "cssls",
  -- "emmet_ls",
  -- "clangd",
  -- "tailwindcss",
}

for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
