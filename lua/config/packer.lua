-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    -- use "EdenEast/nightfox.nvim"
    -- use("petertriho/nvim-scrollbar")
    -- use 'nvim-lua/plenary.nvim'
    -- use 'ThePrimeagen/harpoon'
    -- use {
    --     'nvim-telescope/telescope.nvim', tag = '0.1.5',
    --     requires = { { 'nvim-lua/plenary.nvim' } }
    -- }
    use {'neoclide/coc.nvim' , branch = 'release'}
    -- use {
    --     'nvim-treesitter/nvim-treesitter',
    --     run = ':TSUpdate'
    -- }
    -- use 'mbbill/undotree'

    -- use {
    --     'numToStr/Comment.nvim',
    --     config = function()
    --         require('Comment').setup()
    --     end
    -- }

    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("null-ls").setup()
        end,
        requires = { "nvim-lua/plenary.nvim" },
    })


    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use "lukas-reineke/indent-blankline.nvim"
    use 'nvim-tree/nvim-web-devicons'
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
end)
