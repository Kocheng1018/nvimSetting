-- set nvim-ts-context-commentstring
require'nvim-treesitter.configs'.setup {
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    config = {
      scss = '/* %s */'
    }
  }
}
