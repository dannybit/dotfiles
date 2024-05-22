local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
--keymap.set("n", "<Leader>q", ":quit<Return>", opts)
--keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- Split window
keymap.set("n", "<Leader>sh", ":split<Return>", opts)
keymap.set("n", "<Leader>sv", ":vsplit<Return>", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

-- Quickfix list navigation
vim.api.nvim_set_keymap('n', '<leader>qo', ':copen<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qc', ':cclose<CR>', { noremap = true, silent = true })

-- Yank to clipboard
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- Paste from clipboard
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true, silent = true })
