return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false, -- so it can take over directory buffers from netrw
  opts = {
    default_file_explorer = true,
    view_options = { show_hidden = true },
  },
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    { "<leader>e", "<cmd>Oil<cr>", desc = "File explorer" },
  },
}
