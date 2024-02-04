local map = vim.api.nvim_set_keymap
local opt = vim.opt
local cmd = vim.cmd

vim.g.skip_ts_context_commentstring_module = true

-- Move lines block
map("v", "<A-j>", ":'<,'>m '>+1<CR>gv=gv", { noremap = true })
map("v", "<A-k>", ":'<,'>m '<-2<CR>gv=gv", { noremap = true })

-- Copy lines block
map("v", "<A-S-j>", ":'<,'>t '<-1<CR>gv=gv", { noremap = true })
map("v", "<A-S-k>", ":'<,'>t '><CR>gv=gv", { noremap = true })

-- vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
--     desc = "Toggle Spectre"
-- })
-- vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
--     desc = "Search current word"
-- })
-- vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
--     desc = "Search current word"
-- })
-- vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
--     desc = "Search on current file"
-- })

-- relative number by default
opt.relativenumber = true
-- lines before cursor
opt.scrolloff = 12
-- disable swap files
opt.swapfile = false

-- git diff view colors for diffview plugin
cmd "hi DiffviewDiffAdd guifg=NONE guibg=#869e75"
cmd "hi DiffviewDiffChange guifg=NONE guibg=#719aba"
cmd "hi DiffviewDiffText guifg=NONE guibg=#4e86e5"
cmd "hi DiffviewDiffDeleteDim guifg=#ff8080 guibg=NONE"
cmd "hi DiffDelete guifg=NONE guibg=#bc5e5f"
