function opt(level, options)
  for key, value in next, options do
    vim[level][key] = value
  end
end

local options = {
  number = true,
  relativenumber = true,
  tabstop = 2, -- 2 spaces for tabs (prettier default)
  shiftwidth = 2, -- 2 spaces for indent width
  softtabstop = 2, -- 2 spaces for indent width
  expandtab = true, -- expand tab to spaces
  autoindent = true, -- copy indent from current line when starting new one
  breakindent = true, -- Enable break indentation
  wrap = false, -- disable line wrapping
  ignorecase = true, -- ignore case when searching
  smartcase = true, -- if you include mixed case in your search, assumes you want case-sensitive
  cursorline = true, -- highlight the current cursor line
  scrolloff = 16, -- Keep at least 16 line at the edge of screen when moving
  termguicolors = true,
  background = "dark", -- colorschemes that can be light or dark will be made dark
  signcolumn = "yes", -- show sign column so that text doesn't shift
  colorcolumn = "80", -- Add a colored line at char 80
  backspace = "indent,eol,start", -- allow backspace on indent, end of line or insert mode start position
  splitright = true, -- split vertical window to the right
  splitbelow = true, -- split horizontal window to the bottom
  swapfile = false,
  mouse = "a",
}

opt("o", options)

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})
