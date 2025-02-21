-- vim.opt.guicursor =
-- 'n-v-c:block,i-ci-ve:ver25'
vim.opt.incsearch = true

-- vim.opt.guicursor = 'a:block'
-- vim.opt.guicursor = ''
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.smartindent = true

-- vim.opt.wrap = true
-- vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- vim.opt.colorcolumn = "80"


vim.g.netrw_altv = 1
-- vim.cmd [[colorscheme tokyonight]]
-- vim.cmd("colorscheme duskfox")
-- vim.cmd.highlight('DiagnosticUnderlineError guisp=#ff0000 gui=undercurl')

vim.api.nvim_create_autocmd("BufWritePre", { command = "lua vim.lsp.buf.format()" })



vim.opt.updatetime = 900
-- Function to check if a floating dialog exists and if not
-- then check for diagnostics under the cursor
function OpenDiagnosticIfNoFloat()
    for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
        if vim.api.nvim_win_get_config(winid).zindex then
            return
        end
    end
    -- THIS IS FOR BUILTIN LSP
    vim.diagnostic.open_float(0, {
        scope = "cursor",
        focusable = false,
        close_events = {
            "CursorMoved",
            "CursorMovedI",
            "BufHidden",
            "InsertCharPre",
            "WinLeave",
        },
    })
end

-- Show diagnostics under the cursor when holding position
vim.api.nvim_create_augroup("lsp_diagnostics_hold", { clear = true })
vim.api.nvim_create_autocmd({ "CursorHold" }, {
    pattern = "*",
    command = "lua OpenDiagnosticIfNoFloat()",
    group = "lsp_diagnostics_hold",
})



vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError',
    { fg = "#ff0000", bg = "#4B252C", underline = true, undercurl = true, italic = true, bold = true })

vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo',
    { fg = "#3082ff", bg = "#a4cbff" })
