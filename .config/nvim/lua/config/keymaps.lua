-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exit INSERT mode with jj
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true })

-- Undotree toggle
vim.api.nvim_set_keymap("n", "<Leader>t", ":UndotreeToggle<CR>", { noremap = true })

-- Find hidden files
vim.api.nvim_set_keymap("n", "<Leader>fh", ":Telescope find_files hidden=true<CR>", { noremap = true })
