vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines up/down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- yank to system buffer
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- copy file's path
function insertFullPath()
    local filepath = vim.fn.expand("%")
    vim.fn.setreg("+", filepath) -- write to clipboard
end
vim.keymap.set("n", "<leader>pc", insertFullPath, { noremap = true, silent = true })

-- Escape to C-c (default is <C-[>)
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc ='Move focus to the left window' })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = 'Move focus to the right window' })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = 'Move focus to the lower window' })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = 'Move focus to the upper window' })

-- Neotree show file
vim.keymap.set("n", "<leader>fr", ":Neotree reveal<CR>", {})

-- Clear highlights on search when pressing Esc in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
