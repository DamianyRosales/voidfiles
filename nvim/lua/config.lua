--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- Global options
vim.o.exrc = true
vim.o.guicursor = false
vim.o.errorbells = false
vim.o.undodir = "~/.config/nvim/undodir"
vim.o.backup = false
vim.o.hidden = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.scrolloff = 8
vim.o.encoding = "UTF-8"

-- Local to window options
vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.wrap = false
vim.wo.signcolumn = "yes"

-- Local to buffer options
vim.bo.syntax = "on"
vim.bo.smartindent = true
vim.bo.swapfile = false
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4
vim.bo.undofile = true


