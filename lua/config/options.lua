-- Encoding and Decoding
vim.g.encoding = "UTS-8"
vim.o.fileencoding = "utf-8"

-- Clipboard
vim.o.clipboard = "unnamedplus"

-- Interaction
vim.o.mouse = "a"

-- Tab and Indent
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.expandtab = false

vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- Search
vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.ignorecase = true
vim.o.smartcase = true

-- Completion
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- Move
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- UI
vim.wo.cursorline = true
vim.wo.signcolumn = "yes"
vim.wo.colorcolumn = "160"

vim.o.cmdheight = 1

-- Display
vim.o.listchars = "space:_,tab:>-"

-- Line Number
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true

-- Windows
vim.o.splitbelow = true
vim.o.splitright = true
