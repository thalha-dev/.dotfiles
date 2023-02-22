-- OPTIONS

function MY_CURSOR_TOGGLE()
	if vim.o.cursorline then
		vim.o.cursorline = false
	else
		vim.o.cursorline = true
	end
end

function MY_SPELL_TOGGLE()
	if vim.o.spell then
		vim.o.spell = false
	else
		vim.o.spell = true
	end
end

function MY_WRAP_TOGGLE()
	if vim.o.wrap then
		vim.o.wrap = false
	else
		vim.o.wrap = true
	end
end

-- PLAY WITH REGIGSTERS

function MY_REG_COPY_ZERO_TO_PLUS()
	local temp = vim.fn.getreg("0")
	vim.fn.setreg("+", temp)
end

function MY_REG_COPY_ONE_TO_PLUS()
	local temp = vim.fn.getreg("1")
	vim.fn.setreg("+", temp)
end

function MY_REG_COPY_PLUS_TO_UNNAMED()
	local temp = vim.fn.getreg("+")
	vim.fn.setreg("", temp)
end

function MY_REG_COPY_UNNAMED_TO_PLUS()
	local temp = vim.fn.getreg("")
	vim.fn.setreg("+", temp)
end

function MY_REG_COPY_PERSENT_TO_PLUS()
	local temp = vim.fn.getreg("%")
	vim.fn.setreg("+", temp)
end

function MY_REG_COPY_PERSENT_TO_UNNAMED()
	local temp = vim.fn.getreg("%")
	vim.fn.setreg("", temp)
end

function MY_INDENT_TWO()
	vim.cmd([[
    set shiftwidth=2
    set softtabstop=2
  ]])
end

function MY_INDENT_FOUR()
	vim.cmd([[
    set shiftwidth=4
    set softtabstop=4
  ]])
end
