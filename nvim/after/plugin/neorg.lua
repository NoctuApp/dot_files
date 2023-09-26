require("neorg").setup({
  vim.keymap.set("n", "<leader>ni", "<cmd>Neorg index<cr>", { desc = "Open index" }),
  vim.keymap.set("n", "<leader>nc", "<cmd>Neorg toggle-concealer<cr>", { desc = "Toggle concealer" }),
  vim.keymap.set("n", "<leader>nt", "<cmd>Neorg toc<cr>", { desc = "Toggle table of content" }),
  vim.keymap.set("n", "<leader>nr", "<cmd>Neorg return<cr>", { desc = "Return to project" }),
  vim.keymap.set("n", "<leader>nm", "<cmd>Neorg inject-metadata<cr>", { desc = "Inject Metada" }),
  vim.keymap.set("n", "<leader>ne", "<cmd>Neorg export", { desc = "Export file" }),
  vim.keymap.set(
    "n",
    "<leader>ns",
    "<cmd>Neorg generate-workspace-summary<cr>",
    { desc = "Generate workspace summary" }
  ),
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.dirman"] = { -- Manages Neorg workspaces
      config = {
        workspaces = {
          notes = "~/notes",
        },
        default_workspace = "notes",
      },
    },
    ["core.summary"] = {},
    ["core.export"] = {},
  },
})
