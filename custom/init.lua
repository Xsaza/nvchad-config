local map = vim.api.nvim_set_keymap;
local opt = vim.opt;

-- Move lines block
map("v", "<A-j>", ":'<,'>m '>+1<CR>gv=gv", { noremap = true });
map("v", "<A-k>", ":'<,'>m '<-2<CR>gv=gv", { noremap = true });

-- Copy lines block
map("v", "<A-S-j>", ":'<,'>t '<-1<CR>gv=gv", { noremap = true });
map("v", "<A-S-k>", ":'<,'>t '><CR>gv=gv", { noremap = true });

-- relative number by default
opt.relativenumber = true;

opt.scrolloff = 15;
