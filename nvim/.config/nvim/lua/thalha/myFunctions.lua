-- OPTIONS

function MY_CURSOR_TOGGLE()
	if vim.o.cursorline then
		vim.o.cursorline = false
		vim.notify(" cursorline disabled ", vim.log.levels.INFO, { title = "nvim-functions" })
	else
		vim.o.cursorline = true
		vim.notify(" cursorline enabled ", vim.log.levels.INFO, { title = "nvim-functions" })
	end
end

function MY_SPELL_TOGGLE()
	if vim.o.spell then
		vim.o.spell = false
		vim.notify(" spell check disabled ", vim.log.levels.INFO, { title = "nvim-functions" })
	else
		vim.o.spell = true
		vim.notify(" spell check enabled ", vim.log.levels.INFO, { title = "nvim-functions" })
	end
end

function MY_WRAP_TOGGLE()
	if vim.o.wrap then
		vim.o.wrap = false
		vim.notify(" word wrap disabled ", vim.log.levels.INFO, { title = "nvim-functions" })
	else
		vim.o.wrap = true
		vim.notify(" word wrap enabled ", vim.log.levels.INFO, { title = "nvim-functions" })
	end
end
