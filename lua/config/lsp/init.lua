local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "config.nvim-lsp-installer"
require("config.lsp.settings").setup()

-- local on_attach = require("config.lsp.keymaps").on_attach

-- local lsp_flags = {
--   -- This is the default in Nvim 0.7+
--   debounce_text_changes = 150,
-- }
--
-- require('lspconfig')['sumneko_lua'].setup{
--   settings = {
--     Lua = {
--       runtime = {
--         -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--         version = 'LuaJIT',
--       },
--       diagnostics = {
--         -- Get the language server to recognize the `vim` global
--         globals = {'vim'},
--       },
--       workspace = {
--         -- Make the server aware of Neovim runtime files
--         library = vim.api.nvim_get_runtime_file("", true),
--       },
--       -- Do not send telemetry data containing a randomized but unique identifier
--       telemetry = {
--         enable = false,
--       },
--     },
--   },
--   on_attach = on_attach,
--   -- root_dir = { root_pattern(".luarc.json", ".luacheckrc", ".stylua.toml", "selene.toml", ".git")},
--   flags = lsp_flags,
-- }

-- for _, server in pairs(servers) do
-- 	local opts = {
-- 		on_attach = require("user.lsp.handlers").on_attach,
-- 		capabilities = require("user.lsp.handlers").capabilities,
-- 	}
-- 	local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server)
-- 	if has_custom_opts then
-- 	 	opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
-- 	end
-- 	lspconfig[server].setup(opts)
-- end
