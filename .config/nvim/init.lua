require("okamiraner")


vim.api.nvim_set_hl(0, "NormalFloat", {bg=none})
vim.api.nvim_set_hl(0, "TelescopeNormal", {bg=none})
vim.api.nvim_set_hl(0, "StatusLine", {bg=none})

vim.o.guicursor = 'n-v-c-sm-ve:ver100,i-ci:block,r-cr-o:hor100,a:blinkwait300-blinkoff300-blinkon100-Cursor/lCursor'
vim.opt.clipboard = 'unnamedplus'
vim.g.netrw_banner = 0
