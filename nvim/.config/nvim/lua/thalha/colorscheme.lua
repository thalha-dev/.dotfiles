vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.opt.background = 'dark'
--[[ vim.g.transparent_enabled = true ]]

vim.cmd([[
try
  colorscheme kanagawa
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
