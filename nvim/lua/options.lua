local opt = vim.opt

-- Line numbers (absolute, not relative)
opt.number = true
opt.relativenumber = false

-- Indentation: 2 spaces
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

-- Share the clipboard with macOS
opt.clipboard = "unnamedplus"

-- Search: case-insensitive unless the pattern contains an uppercase letter
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Keep undo history after closing a file
opt.undofile = true
