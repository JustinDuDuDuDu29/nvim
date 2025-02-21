vim.keymap.set("n", "<leader>pv", vim.cmd.Vex)
vim.keymap.set("n", "<leader>m", vim.cmd.E)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>v", "\"+p")

vim.keymap.set("v", "<leader>c", "\"+y")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()<cr>")


vim.keymap.set("n", "<leader><Left>", ':exe "vertical resize " . (winwidth(0) * 6/5) <cr>')
vim.keymap.set("n", "<leader><Right>", ':exe "vertical resize " . (winwidth(0) * 5/6) <cr>')
vim.keymap.set("n", "<leader><Up>", ':exe "horizontal resize " . (winheight(0) * 6/5) <cr>')
vim.keymap.set("n", "<leader><Down>", ':exe "horizontal resize " . (winheight(0) * 5/6) <cr>')
vim.keymap.set("n", "<leader>pr", ':vertical resize 110 <cr>')
-- vim.keymap.set("n", "<leader>mr", ':vertical resize 144 <cr>')

vim.keymap.set('n', '<leader>t', vim.cmd.UndotreeToggle)
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
vim.keymap.set("n", "gt", function() vim.lsp.buf.type_definition() end, opts)

vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
