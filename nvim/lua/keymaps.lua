local map = vim.keymap.set

-- Esc clears search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
