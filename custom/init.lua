local map = vim.api.nvim_set_keymap;

map("v", "<A-j>", ":'<,'>m '>+1<CR>gv=gv", { noremap = true });
map("v", "<A-k>", ":'<,'>m '<-2<CR>gv=gv", { noremap = true });

map("v", "<A-S-j>", ":'<,'>t '<-1<CR>gv=gv", { noremap = true });
map("v", "<A-S-k>", ":'<,'>t '><CR>gv=gv", { noremap = true });
