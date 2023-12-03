local map = vim.api.nvim_set_keymap;
local opt = vim.opt;
local cmd = vim.cmd;

-- Move lines block
map("v", "<A-j>", ":'<,'>m '>+1<CR>gv=gv", { noremap = true });
map("v", "<A-k>", ":'<,'>m '<-2<CR>gv=gv", { noremap = true });

-- Copy lines block
map("v", "<A-S-j>", ":'<,'>t '<-1<CR>gv=gv", { noremap = true });
map("v", "<A-S-k>", ":'<,'>t '><CR>gv=gv", { noremap = true });

-- relative number by default
opt.relativenumber = true;
-- lines before cursor
opt.scrolloff = 12;

-- git diff view colors for diffview plugin
cmd("hi DiffviewDiffAdd guifg=NONE guibg=#869e75")
cmd("hi DiffviewDiffChange guifg=NONE guibg=#719aba")
cmd("hi DiffviewDiffText guifg=NONE guibg=#4e86e5")
cmd("hi DiffviewDiffDeleteDim guifg=#ff8080 guibg=NONE")
cmd("hi DiffDelete guifg=NONE guibg=#bc5e5f")

