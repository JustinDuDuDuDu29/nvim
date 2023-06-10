vim.keymap.set("n", "<leader>pv", vim.cmd.Vex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>v", "\"+p")

vim.keymap.set("v", "<leader>c", "\"+y")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()<cr>")
