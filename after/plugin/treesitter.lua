require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the four listed parsers should always be installed)
    ensure_installed = { "javascript", "typescript", "astro", "arduino", "bash", "css", "dart", "dockerfile",
        "gitignore", "go", "html", "json", "markdown", "php", "python", "sql", "svelte", "vue", "c", "lua", "vim",
        "query" },
    -- ensure_installed = {},

    -- Install parsers synchronously (only applied to `ensure_installed`)
    -- sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        -- additional_vim_regex_highlighting = true,
    },
}
