local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
keymap.set('', '<esc>', ':noh<Return>')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')
keymap.set('', '<C-l>', '<C-w>l')

-- change word with RG
keymap.set('n', 'S', ':%s//gc<left><left><left>')

-- blur write return vim cmd
keymap.set('', ':Q', ':q')
keymap.set('', ':W', ':w')
keymap.set('', ':Wq', ':wq')
