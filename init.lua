--[[
=====================================================================
==================== READ THIS BEFORE CONTINUING ====================
=====================================================================

Kickstart.nvim is *not* a distribution.

Kickstart.nvim is a template for your own configuration.
  The goal is that you can read every line of code, top-to-bottom, understand
  what your configuration is doing, and modify it to suit your needs.

  Once you've done that, you should start exploring, configuring and tinkering to
  explore Neovim!

  If you don't know anything about Lua, I recommend taking some time to read through
  a guide. One possible example:
  - https://learnxinyminutes.com/docs/lua/

  And then you can explore or search through `:help lua-guide`


Kickstart Guide:

I have left several `:help X` comments throughout the init.lua
You should run that command and read that help section for more information.

In addition, I have some `NOTE:` items throughout the file.
These are for you, the reader to help understand what is happening. Feel free to delete
them once you know what you're doing, but they should serve as a guide for when you
are first encountering a few different constructs in your nvim config.

I hope you enjoy your Neovim journey,
- TJ

P.S. You can delete this when you're done too. It's your config now :)
--]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.nofsync = true
vim.o.mousemoveevent = true


require('plugin')
require('keymap')
require('telescoop')
require('hpoon')
require('lsp')
require('diagnostic')
require('null_ls')
require('opts')
require('nvim-boom')
require('file-icons')
require('treesitter')
require('bufferl')
-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

vim.cmd('TSEnable highlight')
vim.cmd('TSEnable indent')

-- set control enter to accept completion

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
--
-- set control tab to accept code lsp completion
-- Function to check if LaTeX project exists in the current directory
local function is_latex_project()
  local latex_files = vim.fn.glob("*.tex")
  return latex_files ~= ""
end

-- Apply filter only if it's a LaTeX project
if is_latex_project() then
  require('nvim-tree').setup {
    filters = {
      custom = { "\\.aux$", "\\.bcf$", "\\.blg$", "\\.fdb_latexmk$", "\\.fls$", "\\.log$", "\\.out$", "\\.xml$", "\\.bbl.*$" }
    }
  }
else
  require('nvim-tree').setup {}
end
vim.g.python3_host_prog = '~/.config/nvim/venv/bin/python3'
