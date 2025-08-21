require("altivec.set")
require("altivec.remap")
require("altivec.lazy_init")

-- Set colorscheme
vim.cmd.colorscheme("rose-pine")

-- Netrw
vim.g.netrw_browse_split = 0
vim.g.netew_banner = 0
vim.g.netew_winsize = 25

-- Highlight when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('altivec-highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})
