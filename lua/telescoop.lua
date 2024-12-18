-- [[ Configure fzf-lua ]]
-- See `:help fzf-lua` and `:help fzf-lua.setup()`
require('fzf-lua').setup {
  winopts = {
    height = 0.85,
    width = 0.80,
    row = 0.35,
    col = 0.50,
    border = 'rounded',
    preview = {
      default = 'bat',
      border = 'border',
      wrap = 'wrap',
      hidden = 'nohidden',
      vertical = 'down:45%',
      horizontal = 'right:60%',
      layout = 'flex',
      flip_columns = 120,
      theme = 'Default'
    },
  },
}

-- Key mappings for fzf-lua
vim.keymap.set('n', '<leader>?', require('fzf-lua').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('fzf-lua').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  require('fzf-lua').live_grep({
    winopts = {
      preview = {
        hidden = 'nohidden',
      },
    },
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('fzf-lua').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('fzf-lua').files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('fzf-lua').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('fzf-lua').grep_cword, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('fzf-lua').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('fzf-lua').diagnostics_document, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sdw', require('fzf-lua').diagnostics_workspace, { desc = '[S]earch [D]iagnostics [W]orkspace' })
vim.keymap.set('n', '<leader>fd', "<CMD>FzfLua files<CR>", {desc = 'Open [F]ile [D]irectory'})