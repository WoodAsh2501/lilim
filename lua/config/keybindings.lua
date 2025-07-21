vim.g.setleader = " "
vim.g.setlocalleader = " "

local opt = { noremap = true, silent = true }
local set = vim.api.nvim_set_keymap

-- set(mode, keys, motion, options)
set("v", "<", "<gv", opt)
set("v", ">", ">gv", opt)

set("n", "<A-h>", "<C-w>h", opt)
set("n", "<A-j>", "<C-w>j", opt)
set("n", "<A-k>", "<C-w>k", opt)
set("n", "<A-l>", "<C-w>l", opt)

set("n", "<A-q>", "<cmd>qa<CR>", opt)
set("n", "<A-t>", "<cmd>NvimTreeToggle<CR>", opt)
set("n", "<Space>", ":", opt)
