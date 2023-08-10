-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exit INSERT mode with jj
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true })

-- Undotree toggle
vim.api.nvim_set_keymap("n", "<Leader>t", ":UndotreeToggle<CR>", { noremap = true })

-- Find hidden files
vim.api.nvim_set_keymap("n", "<Leader>fh", ":Telescope find_files hidden=true<CR>", { noremap = true })

-- Toggle floating terminal
vim.api.nvim_set_keymap("n", "<Leader>m", ":ToggleTerm direction=float<CR>", { noremap = true })

---- nvim-tmux-navigator
--vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTmuxNavigateLeft<CR>", { noremap = true })
--vim.api.nvim_set_keymap("n", "<C-j>", ":NvimTmuxNavigateDown<CR>", { noremap = true })
--vim.api.nvim_set_keymap("n", "<C-k>", ":NvimTmuxNavigateUp<CR>", { noremap = true })
--vim.api.nvim_set_keymap("n", "<C-l>", ":NvimTmuxNavigateRight<CR>", { noremap = true })

-- Resize Window Panes
vim.api.nvim_set_keymap("n", "<C-S-h>", ":vertical resize -2<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-S-j>", ":resize -2<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-S-k>", ":resize +2<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-S-l>", ":vertical resize +2<CR>", { noremap = true })
