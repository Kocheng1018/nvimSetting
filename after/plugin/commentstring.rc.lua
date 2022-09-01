require'nvim-treesitter.configs'.setup {
  context_commentstring = {
    enable = true,
    configs = {
      scss = '// %s'
    }
  }
}

local keymap = vim.keymap

keymap.set('n', '<space>c', '<Plug>CommentaryLine')
keymap.set('v', '<space>c', '<Plug>Commentary')
