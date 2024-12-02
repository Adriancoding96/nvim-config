vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- remove search highlighting by pressing esc key in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlights" })

-- exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- enable moving with cntrl h, j, k, l in instert mode
vim.keymap.set('i', '<C-h>', '<Left>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-j>', '<Down>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-k>', '<Up>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-l>', '<Right>', { noremap = true, silent = true })

-- disable arrow keys
vim.keymap.set("n", '<left>', '<cmd>echo "no arrow keys allowed.."<CR>')
vim.keymap.set("n", '<right>', '<cmd>echo "no arrow keys allowed.."<CR>')
vim.keymap.set("n", '<up>', '<cmd>echo "no arrow keys allowed.."<CR>')
vim.keymap.set("n", '<down>', '<cmd>echo "no arrow keys allowed.."<CR>')

-- window focus keys
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Focus on left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Focus on right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Focus on bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Focus on top window" })

-- split window keys
vim.keymap.set("n", "<leader>wv", ":vsplit<cr>", { desc = "Window Split Vertical" })
vim.keymap.set("n", "<leader>wh", ":split<cr>", { desc = "Window Split Horizontal" })


