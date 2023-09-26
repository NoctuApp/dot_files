vim.keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Mark file" })
vim.keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Next file" })
vim.keymap.set("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = "Previous file" })
vim.keymap.set(
  "n",
  "<leader>he",
  "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
  { desc = "List marked files" }
)
