vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("i", "jj", "<Esc>", options)

vim.keymap.set("n", "QQ", function()
    vim.cmd("w")
end)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
