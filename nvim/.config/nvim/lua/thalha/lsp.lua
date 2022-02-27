local nvim_lsp = require('lspconfig')
local servers = { 'tsserver' }

local on_attach = function(client, bufnr)
	-- Do things when language server attaches to
	-- the current buffer
end


for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup {
        on_attach = on_attach
    }
end
