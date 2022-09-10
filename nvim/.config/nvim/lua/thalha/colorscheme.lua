vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.opt.background = 'dark'

vim.cmd([[
try
  colorscheme tundra 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
