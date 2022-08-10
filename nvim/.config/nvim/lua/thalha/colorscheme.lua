vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

vim.cmd [[
try
  colorscheme themer_radium
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
