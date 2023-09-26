-- set leader key to space
vim.g.mapleader = " "

function setkeymap(state, mapping)
  for index, maptable in next, mapping do
    vim.keymap.set(state, maptable[1], maptable[2], maptable[3])
  end
end

setkeymap("i", {
  { "<C-c>", "<ESC>", { desc = "Exit insert mode with Ctrl c" } },
})

setkeymap("n", {
  { "<ESC>", ":nohl<CR>", { desc = "Clear search highlights on escape" } },
  { "<C-s>", ":w<CR>", { desc = "Save file" } },
  { "<C-q>", ":qa<CR>", { desc = "Quit all file" } },
  { "<leader>c", ":close<CR>", { desc = "Close current buffer" } },
  --
  { "<leader>+", "<C-a>", { desc = "Increment number" } },
  { "<leader>-", "<C-x>", { desc = "Decrement number" } },
  --
  { "x", '"_x', { desc = "Delete without yank" } },
  --
  { "<leader>tc", "<cmd>tabnew<CR>", { desc = "Open new tab" } },
  { "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" } },
  { "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" } }, --  go to next tab
  { "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" } }, --  go to previous tab
  { "<leader>to", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" } }, --  move current buffer to new tab
  { "<leader>tm", "<cmd>MaximizerToggle<CR>", { desc = "Maximize/minimize a split" } },
  --
  {
    "<leader><space>",
    function()
      vim.cmd("so")
    end,
    { desc = "Source file" },
  },
  --
  { "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "Word wrap management" } },
  { "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "Word wrap management" } },
  --
  { "J", "mzJ`z", { desc = "Remove line break and keep cursor at the begining of the line" } },
  { "<C-d>", "<C-d>zz", { desc = "Move half screen down and keep cursor centered" } },
  { "<C-u>", "<C-u>zz", { desc = "Move half screen up and keep cursor centered" } },
  --
  { "n", "nzzzv", { desc = "Go to next occurence and keep cursor centered" } },
  { "N", "Nzzzv", { desc = "Go to previous occurence and keep cursor centered" } },
  --
  { "<leader>Y", [["+Y]], { desc = "Yank until end of line into clipboard" } },
  --
  { "<leader>lf", vim.lsp.buf.format, { desc = "Format file" } },
  --
  -- { "<leader>gs", vim.cmd.Git, { desc = "[G]it [S]tatus" } },
  -- { "<leader>gf", [[:Git fetch origin -a<CR>]], { desc = "[G]it [F]etch" } },
  -- { "<leader>gp", [[:Git pull origin ]], { desc = "[G]it [P]ull" } },
  -- { "<leader>gP", [[:Git push origin ]], { desc = "[G]it [P]ush" } },
  -- { "<leader>gm", [[:Git merge ]], { desc = "[G]it [M]erge" } },
  -- { "<leader>gc", [[:Git checkout ]], { desc = "[G]it [C]heckout" } },
  --
  {
    "<leader>s",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace all occurences of the world under cursor" },
  },
  --
  { "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Give execution right on current file" } },
})

setkeymap("v", {
  { "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" } },
  { "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" } },
})

setkeymap("x", {
  { "<leader>pp", [["_dP]], { desc = "Paste from clipboard" } },
})

setkeymap({ "n", "v" }, {
  { "<leader>y", [["+y]], { desc = "Yank into clipboard" } },
  { "<leader>d", [["_d]], { desc = "Cut into clipboard" } },
})
