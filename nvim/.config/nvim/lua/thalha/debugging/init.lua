local status_ok, dap = pcall(require, "dap")
if not status_ok then
	return
end

vim.keymap.set("n", "<leader>dc", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>dl", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>dj", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>do", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>dm", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")

local status_ok, dap_virtual_text = pcall(require, "nvim-dap-virtual-text")
if not status_ok then
	return
end
dap_virtual_text.setup()

local status_ok, dap_ui = pcall(require, "dapui")
if not status_ok then
	return
end
dap_ui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
	dap_ui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dap_ui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dap_ui.close()
end

require("thalha.debugging.go")
require("thalha.debugging.lua")
