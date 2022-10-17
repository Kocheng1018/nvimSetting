local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
  debug = true,
  sources = {
    null_ls.builtins.formatting.eslint_d,
  },
})

vim.keymap.set('n', '<space>cf', ":lua vim.lsp.buf.formatting_seq_sync()<CR>)")
-- vim.keymap.set('n', '<space>cf', ":lua vim.lsp.buf.formatting_sync()<CR>)")
-- vim.keymap.set('n', '<space>cf', ":lua vim.lsp.buf.formattings()<CR>)")
