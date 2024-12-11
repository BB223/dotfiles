require('config.options')
require('config.keymaps')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local opts = {
    defaults = {
        lazy = false,
    },
    change_detection = {
        notify = false,
    },
}

require("lazy").setup('plugins', opts)

require('config.autocmds')

local projectfile = vim.fn.getcwd() .. '/project.godot'
if vim.fn.filereadable(projectfile) then
    vim.fn.serverstart(vim.fn.expand('$HOME/.cache/nvim/godot-server.pipe'))
end

