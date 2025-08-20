vim.g.mapleader = " "
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

-- Escape to C-c
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Switch between windows
-- <C-w>h switch window left
-- <C-w>l switch window right
-- <C-w>j switch window down
-- <C-w>k switch window up

