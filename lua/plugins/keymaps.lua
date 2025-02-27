local keymap = vim.keymap.set

-- Shortcuts
keymap('n', '<leader>q', ':qa')
keymap('n', '<leader>w', ':wa')
keymap('n', '<leader>e', ':wqa')
keymap('n', '<leader>r', ':qa!')

-- Telescope
keymap('n', '<C-p>', ":Telescope find_files<cr>")
keymap('n', '<leader>fg', ":Telescope git_files<cr>")
keymap('n', '<leader>fb', ":Telescope live_grep<cr>")
keymap("n", "<leader>u", "<cmd>Telescope undo<cr>")

-- Oil
keymap("n", "<S-j>", ":Oil<cr>", { desc = "Open parent directory" })

-- Pretty hover
keymap("n", "<leader>h", "<cmd>lua require('pretty_hover').hover()<CR>", { noremap = true, silent = true })

-- Noice
-- keymap("n", "<leader>d", ":NoiceDismiss<cr>", { desc = "Dismiss noice message" })
