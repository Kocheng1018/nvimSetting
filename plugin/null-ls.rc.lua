local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
  debug = true,
  sources = {
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.formatting.prettierd,
    -- 錯誤提示
    -- null_ls.builtins.diagnostics.eslint_d.with({
    --   diagnostics_format = '[eslint] #{m}\n(#{c})'
    -- }),
  },
})

vim.keymap.set('n', '<space>cf', ":lua vim.lsp.buf.formatting_seq_sync()<CR>)")
-- vim.keymap.set('n', '<space>cf', ":lua vim.lsp.buf.formatting_sync()<CR>)")
-- vim.keymap.set('n', '<space>cf', ":lua vim.lsp.buf.formattings()<CR>)")
