local M = {}

-- OPTIONS

function M.MY_CURSOR_TOGGLE()
	if vim.o.cursorline then
		vim.o.cursorline = false
	else
		vim.o.cursorline = true
	end
end

function M.MY_SPELL_TOGGLE()
	if vim.o.spell then
		vim.o.spell = false
	else
		vim.o.spell = true
	end
end

return M
