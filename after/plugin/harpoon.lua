require("harpoon").setup({ tabline = true })

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-l>", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>Q", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>W", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>E", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>R", function() ui.nav_file(4) end)
