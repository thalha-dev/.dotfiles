local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require "thalha.lsp.configs"
require("thalha.lsp.handlers").setup()
require "thalha.lsp.null-ls"
