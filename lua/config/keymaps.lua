-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
--
-- Additional keymaps listed below

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- increment / decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- jump between diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, { desc = "Next Diagnostic", noremap = true, silent = true })
keymap.set("n", "<C-k>", function()
  vim.diagnostic.goto_prev()
end, { desc = "Previous Diagnostic", noremap = true, silent = true })

-- Move between buffers
keymap.set("n", "<s-tab>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
keymap.set("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Dashboard
keymap.set("n", "<Leader>uu", ":Dashboard<CR>", { desc = "Dashboard" })

-- Terminal --
-- Better terminal navigation
-- keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
