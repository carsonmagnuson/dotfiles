vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- previously to open the now disabled netrw
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)
