local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  -- Options with default value
  -- "single" | "double" | "rounded" | "bold" | "plus"
  border_style = "plus",
  code_action_icon = "❓",
  -- same as nvim-lightbulb but async
  code_action_lightbulb = {
      enable = true,
      enable_in_insert = false,
      cache_code_action = true,
      sign = true,
      update_time = 150,
      sign_priority = 20,
      virtual_text = false, -- sign of code line back
  },
  -- <gd> window action keys
  finder_action_keys = {
      open = "o",
      vsplit = "v",
      split = "s",
      tabe = "t",
      quit = "q",
  }
}

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Lsp finder find the symbol definition implement reference
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
keymap("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", opt)

-- Code action
keymap("n", "<space>ca", "<cmd>Lspsaga code_action<CR>", opt)
keymap("v", "<space>ca", "<cmd>Lspsaga range_code_action<CR>", opt)

-- Rename
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", opt)

-- Definition preview
keymap("n", "gh", "<cmd>Lspsaga preview_definition<CR>", opt)

-- Show line diagnostics
keymap("n", "<space>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)

-- Show cursor diagnostic
keymap("n", "<space>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opt)

-- Outline
keymap("n","<space>o", "<cmd>LSoutlineToggle<CR>", opt)

-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opt)

-- Float terminal
keymap("n", "<C-t>", "<cmd>Lspsaga open_floaterm<CR>", opt)

-- close floaterm
keymap("t", "<C-t>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], opt)
