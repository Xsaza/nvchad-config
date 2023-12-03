local M = {}

M.my_remaps = {
  i = {
    ["jk"] = { "<ESC>", "Back to insert mode" },
  },
  n = {
    ["<leader>h"] = { "^", "To line start" },
    ["<leader>k"] = { "$", "To line end" },
    ["<A-j>"] = { "<cmd>:m .+1<CR>", "Move line down" },
    ["<A-k>"] = { "<cmd>:m .-2<CR>", "Move line up" },
    ["<A-S-j>"] = { "<cmd>:t .<CR>", "Copy line down" },
    ["<A-S-k>"] = { "<cmd>:t .-1<CR>", "Copy line down" },
    ["<leader>sa"] = { "gg<S-v><S-g>", "Select all" },
    ["<leader>fg"] = { "<cmd>:Flog -all -sort=date<CR>", "Open Flog graph" },
    ["<leader>dv"] = { "<cmd>:DiffviewOpen<CR>", "Open Diffview" },
    ["<leader>dh"] = { "<cmd>:DiffviewFileHistory<CR>", "Open Diffview file history" },
    ["tn"] = { "<cmd>:tabnext<CR>", "Move to next tab" },
    ["tp"] = { "<cmd>:tabprevious<CR>", "Move to previous tab" },
    ["tc"] = { "<cmd>:tabnew<CR>", "Create new tab" },
    ["tw"] = { "<cmd>:tabclose<CR>", "Close current tab" },
    ["<leader>b"] = { "<cmd>:NvimTreeToggle<CR>", "Toggle nvimtree" },
    ["<leader>gsh"] = { "<cmd>:Gitsigns stage_hunk<CR>", "Gitsigns stage hunk" },
  },
  v = {
    ["<leader>h"] = { "^", "To line start" },
    ["<leader>k"] = { "$", "To line end" },
  },
}

return M
