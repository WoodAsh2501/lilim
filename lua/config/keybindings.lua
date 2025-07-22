vim.g.setleader = " "
vim.g.setlocalleader = " "

local opt = { noremap = true, silent = true }
local set = vim.api.nvim_set_keymap

-- set(mode, keys, motion, options)
set("v", "<", "<gv", opt)
set("v", ">", ">gv", opt)

set("n", "<S-A-h>", "<C-w>h", opt)
set("n", "<S-A-j>", "<C-w>j", opt)
set("n", "<S-A-k>", "<C-w>k", opt)
set("n", "<S-A-l>", "<C-w>l", opt)

set("i", "<A-h>", "<Left>", opt)
set("i", "<A-j>", "<Down>", opt)
set("i", "<A-k>", "<Up>", opt)
set("i", "<A-l>", "<Right>", opt)

set("n", "<A-q>", "<cmd>qa<CR>", opt)
set("n", "<A-t>", "<cmd>NvimTreeToggle<CR>", opt)
set("n", "<Space>", ":", opt)
