local M = {}

M.MY_CURSOR_TOGGLE = function()
	if vim.o.cursorline then
		vim.o.cursorline = false
	else
		vim.o.cursorline = true
	end
end

M.MY_SPELL_TOGGLE = function()
	if vim.o.spell then
		vim.o.spell = false
	else
		vim.o.spell = true
	end
end

M.MY_WRAP_TOGGLE = function()
	if vim.o.wrap then
		vim.o.wrap = false
	else
		vim.o.wrap = true
	end
end

-- PLAY WITH REGIGSTERS

M.MY_REG_COPY_ZERO_TO_PLUS = function()
	local temp = vim.fn.getreg("0")
	vim.fn.setreg("+", temp)
end

M.MY_REG_COPY_ONE_TO_PLUS = function()
	local temp = vim.fn.getreg("1")
	vim.fn.setreg("+", temp)
end

M.MY_REG_COPY_PLUS_TO_UNNAMED = function()
	local temp = vim.fn.getreg("+")
	vim.fn.setreg("", temp)
end

M.MY_REG_COPY_UNNAMED_TO_PLUS = function()
	local temp = vim.fn.getreg("")
	vim.fn.setreg("+", temp)
end

M.MY_REG_COPY_PERCENT_TO_PLUS = function()
	local temp = vim.fn.getreg("%")
	vim.fn.setreg("+", temp)
end

M.MY_REG_COPY_PERCENT_TO_UNNAMED = function()
	local temp = vim.fn.getreg("%")
	vim.fn.setreg("", temp)
end

M.MY_INDENT_TWO = function()
	vim.cmd([[
    set shiftwidth=2
    set softtabstop=2
  ]])
end

M.MY_INDENT_FOUR = function()
	vim.cmd([[
    set shiftwidth=4
    set softtabstop=4
  ]])
end

return M
