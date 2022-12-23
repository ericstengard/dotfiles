local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "es.lsp.mason"
require("es.lsp.handlers").setup()
require "es.lsp.null-ls"
