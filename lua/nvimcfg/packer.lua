-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    -- use 'folke/tokyonight.nvim'
    use "EdenEast/nightfox.nvim"
    use { "folke/trouble.nvim" }
    use("petertriho/nvim-scrollbar")
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'mbbill/undotree'
    use {

        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("null-ls").setup()
        end,
        requires = { "nvim-lua/plenary.nvim" },
    })

    -- use {
    --     'VonHeikemen/lsp-zero.nvim',
    --     branch = 'v1.x',
    --     requires = {
    --         -- LSP Support
    --         { 'neovim/nvim-lspconfig' },             -- Required
    --         { 'williamboman/mason.nvim' },           -- Optional
    --         { 'williamboman/mason-lspconfig.nvim' }, -- Optional
    --
    --         -- Autocompletion
    --         { 'hrsh7th/nvim-cmp' },         -- Required
    --         { 'hrsh7th/cmp-nvim-lsp' },     -- Required
    --         { 'hrsh7th/cmp-buffer' },       -- Optional
    --         { 'hrsh7th/cmp-path' },         -- Optional
    --         { 'saadparwaiz1/cmp_luasnip' }, -- Optional
    --         { 'hrsh7th/cmp-nvim-lua' },     -- Optional
    --
    --         -- Snippets
    --         { 'L3MON4D3/LuaSnip' },             -- Required
    --         { 'rafamadriz/friendly-snippets' }, -- Optional
    --     }
    -- }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use "lukas-reineke/indent-blankline.nvim"
    use 'nvim-tree/nvim-web-devicons'
    use {
        'chikko80/error-lens.nvim',
        requires = { 'nvim-telescope/telescope.nvim' }
    }
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
end)
