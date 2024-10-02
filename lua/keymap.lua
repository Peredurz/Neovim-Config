-- Move to specific buffer by number (e.g., 1 to 9)
vim.api.nvim_set_keymap("n", "<leader>1", "<CMD>BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>2", "<CMD>BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>3", "<CMD>BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>4", "<CMD>BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>5", "<CMD>BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>6", "<CMD>BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>7", "<CMD>BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>8", "<CMD>BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>9", "<CMD>BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })

-- Jump to the last buffer (use 0 here)
vim.api.nvim_set_keymap("n", "<leader>0", "<CMD>BufferLineGoToBuffer -1<CR>", { noremap = true, silent = true })

-- Move to next and previous buffers in bufferline
vim.api.nvim_set_keymap("n", "<TAB>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-b>", ":BufferLineCloseOthers<CR>", { noremap=true, silent=true })

vim.api.nvim_set_keymap("n", "<leader>tn", "<CMD>tabnew<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>to", "<CMD>NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tf", "<CMD>NvimTreeFocus<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tc", "<CMD>NvimTreeClose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ts", "<CMD>TSEnable highlight<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>i", "<CMD>lua vim.lsp.buf.hover()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>nd", "<CMD>NoiceDismiss<CR>", { noremap = true, desc = "Dismiss Noice Message" })
