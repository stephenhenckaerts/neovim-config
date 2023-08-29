require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {
    bg = "#0a0a0a", -- darker shade for the background
  },
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")

vim.cmd("hi Normal guibg=#1a1a1a guifg=#ebdbb2") 
vim.cmd("hi NormalNC guibg=#1a1a1a guifg=#ebdbb2") 
