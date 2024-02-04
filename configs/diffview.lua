local actions = require "diffview.actions"

require("diffview").setup {
  enhanced_diff_hl = true,
  keymaps = {
    disable_defaults = false,
    file_panel = {
      { "n", "<c-u>", actions.scroll_view(-0.25), { desc = "Scroll the view up" } },
      { "n", "<c-d>", actions.scroll_view(0.25), { desc = "Scroll the view down" } },
    },
    file_history_panel = {
      { "n", "<c-u>", actions.scroll_view(-0.25), { desc = "Scroll the view up" } },
      { "n", "<c-d>", actions.scroll_view(0.25), { desc = "Scroll the view down" } },
    },
  },
}
