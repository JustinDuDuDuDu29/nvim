local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


-- local actions = require("telescope.actions")
-- local trouble = require("trouble.providers.telescope")
--
-- local telescope = require("telescope")
--
-- telescope.setup {
--     defaults = {
--         mappings = {
--             i = { ["<c-t>"] = trouble.open_with_trouble },
--             n = { ["<c-t>"] = trouble.open_with_trouble },
--         },
--     },
-- }
