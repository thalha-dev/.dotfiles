local M = {}

M.setup = function()
	local signs = {
		{ name = "DiagnosticSignError", text = "" },
		{ name = "DiagnosticSignWarn", text = "" },
		{ name = "DiagnosticSignHint", text = "" },
		{ name = "DiagnosticSignInfo", text = "" },
	}

	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
	end

	local config = {
		-- disable virtual text
		virtual_lines = false,
		virtual_text = false,
		-- show signs
		signs = {
			active = signs,
		},
		update_in_insert = true,
		-- underline = true,
		underline = false,
		severity_sort = true,
		float = {
			focusable = false,
			style = "minimal",
			border = "rounded",
			-- border = {"▄","▄","▄","█","▀","▀","▀","█"},
			source = "always",
			header = "",
			prefix = "",
		},
	}

	vim.diagnostic.config(config)

	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
		border = "rounded",
		-- width = 60,
	})

	vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
		border = "rounded",
		-- width = 60,
	})
end

local function attach_navic(client, bufnr)
	vim.g.navic_silence = true
	local status_ok, navic = pcall(require, "nvim-navic")
	if not status_ok then
		return
	end
	navic.attach(client, bufnr)
end

local function lsp_keymaps(bufnr)
	local opts = { noremap = true, silent = true }
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>h", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lsh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ltd", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>fdl", "<cmd>Telescope diagnostics<CR>", opts)
	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"<leader>ldn",
		'<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>',
		opts
	)
	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"<leader>ldp",
		'<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>',
		opts
	)
	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"gl",
		'<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>',
		opts
	)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lff", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
	-- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	-- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
	-- vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format{async=true}' ]])
	-- Lspsaga
	--
	-- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lca", "<cmd>Lspsaga code_action<CR>", { silent = true })
	-- vim.api.nvim_buf_set_keymap(bufnr, "v", "<leader>lca", ":<C-u>Lspsaga range_code_action<CR>", { silent = true })
	-- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lsf", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
	--
end

M.on_attach = function(client, bufnr)
	lsp_keymaps(bufnr)
	attach_navic(client, bufnr)
	-- TO INSPECT
	-- lua =vim.lsp.get_active_clients()[1].server_capabilities

	-- The blow command will highlight the current variable and its usages in the buffer.
	-- if client.server_capabilities.documentHighlightProvider then
	--     vim.cmd([[
	--   hi! link LspReferenceRead Visual
	--   hi! link LspReferenceText Visual
	--   hi! link LspReferenceWrite Visual
	--   augroup lsp_document_highlight
	--     autocmd! * <buffer>
	--     autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
	--     autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
	--   augroup END
	-- ]]   )
	-- end

	vim.notify_once(client.name .. " starting...")
	if client.name == "tsserver" then
		client.server_capabilities.document_formatting = false
		-- client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
	end
	if client.name == "sumneko_lua" then
		client.server_capabilities.document_formatting = false
		-- client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
	end
	if client.name == "html" then
		client.server_capabilities.document_formatting = false
		-- client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
	end
	if client.name == "cssls" then
		client.server_capabilities.document_formatting = false
		-- client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
	end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
	return
end

--[[ M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities) ]]
M.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

return M
