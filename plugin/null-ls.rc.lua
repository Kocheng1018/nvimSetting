local status, null_ls = pcall(require, "null-ls")

if(not status)then
  return
end

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.formatting.pretterd,
  },
  on_attach = function(client, _)
    if client.server_capabilities.documentFormattingProVider then
      vim.api.nvim_command [[augroup Format]]
      vim.api.nvim_command [[autocmd! * <buffer>]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
      vim.api.nvim_command [[augroup END]]
    end
  end,
})
