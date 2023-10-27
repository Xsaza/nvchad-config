local M = {};

M.abc = {
  i = {
    ["jk"] = { "<ESC>", "Back to insert mode" },
  },
  n = {
    ["<leader>j"] = { "^", "To line start" },
    ["<leader>k"] = { "$", "To line end" },
    ["<A-j>"] = { "<cmd>:m .+1<CR>", "Move line down" },
    ["<A-k>"] = { "<cmd>:m .-2<CR>", "Move line up" },
    ["<A-S-j>"] = { "<cmd>:t .<CR>", "Copy line down"},
    ["<A-S-k>"] = { "<cmd>:t .-1<CR>", "Copy line down"},
    ["<leader>fg"] = {"<cmd>:Floggit<CR>", "Open Floggit"}
  },
  v = {
    ["<leader>j"] = { "^", "To line start" },
    ["<leader>k"] = { "$", "To line end" },
  },
};

return M;
