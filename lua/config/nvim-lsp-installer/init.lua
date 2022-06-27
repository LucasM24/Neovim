local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local servers = {
  "sumneko_lua",
  "cssls",
  "html",
  "intelephense",
  "tsserver",
  "jsonls",
  "vuels"
}

lsp_installer.setup()

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("config.lsp.keymaps").on_attach,
    capabilities = require("config.lsp.cmp").capabilities,
  }

  if server == "sumneko_lua" then
    local sumneko_opts = require "config.lsp.servers.sumneko_lua"
    -- opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  lspconfig[server].setup(opts)
end
