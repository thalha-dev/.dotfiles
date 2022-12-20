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
