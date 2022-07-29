local ok, dap = pcall(require, "dap")
if not ok then
	return
end

local status_ok, dap_go = pcall(require, "dap-go")
if not status_ok then
	return
end
dap_go.setup()

vim.cmd([[ command! Godebug execute 'lua require'dap-go'.debug_test()' ]])
