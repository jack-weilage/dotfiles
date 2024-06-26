-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.shiftwidth = 4
opt.tabstop = 4
opt.shell = "/usr/bin/fish"
opt.relativenumber = true

opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldmethod = "expr"
