vim.opt.list = true

vim.cmd [[highlight IndentBlankline guifg=#5C6370 gui=nocombine]]

require("indent_blankline").setup {
    char = "⎸",
    space_char_blankline = " ",
    show_end_of_line = true,
    show_current_context = false,
    show_current_context_start = true,
    char_highlight_list = {
      "IndentBlankline",
    },
}
