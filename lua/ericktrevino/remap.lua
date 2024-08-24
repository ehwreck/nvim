vim.g.mapleader = " "

-- Exit out of a file
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")


vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")

-- Move Highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Paste line below while keeping your cursor in the same place
vim.keymap.set("n", "J", "mzJ`z")

-- Move up and down while keeping your cursor in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move to the next or previous search term while keeping the cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Replace the higlighted section of text while keeping your current yanked text
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Paste into the system clipbaord
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Do not press Q
vim.keymap.set("n", "Q", "<nop>")
