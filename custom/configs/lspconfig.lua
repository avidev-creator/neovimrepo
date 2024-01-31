local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require("lspconfig")

local servers = {"tsserver", "tailwindcss", "gopls", "html", }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


