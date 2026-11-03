local map = vim.keymap.set

-- Space is the leader key: disable its default behavior (moving the cursor right)
map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Esc clears search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
