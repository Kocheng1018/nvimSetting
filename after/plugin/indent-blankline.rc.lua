vim.opt.list = true

vim.opt.listchars:append(
  {tab = ">-"},
  {eol = "↴"}
)

vim.cmd [[highlight IndentBlankline guifg=#5C6370 gui=nocombine]]

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_end_of_line = true,
    show_current_context = false,
    show_current_context_start = true,
    char_highlight_list = {
      "IndentBlankline",
    },
}
