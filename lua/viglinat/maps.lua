-- Remap hjkl to jkl; 
vim.keymap.set('', ';', 'l')
vim.keymap.set('', 'l', 'k')
vim.keymap.set('', 'k', 'j')
vim.keymap.set('', 'j', 'h')
vim.keymap.set('', 'h', '')

vim.keymap.set('n', 'Q', '') 
vim.keymap.set('v', 'K', '')
vim.keymap.set('n', '<S-k>', '')

-- Delete without yank
vim.keymap.set({ 'n', 'v' }, 'd', '"_d')
-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

vim.keymap.set('n', '<Leader>cd', '<cmd>cd %:p:h<CR><cmd>pwd<CR>')
vim.keymap.set('n', '<Leader>lcd', '<cmd>lcd %:p:h<CR><cmd>pwd<CR>')

-- Tabs
vim.keymap.set('n','te', '<cmd>tabedit<cr>')
vim.keymap.set('n','tc', '<cmd>tabclose<cr>')
vim.keymap.set('n','<S-Tab>', ':tabprev<Return>')
vim.keymap.set('n','<Tab>', ':tabnext<Return>')

-- buffers
vim.keymap.set('n', '<Leader><Tab>', ':b#<cr>')


-- Windows
vim.keymap.set('n', '<Space>', '<C-w>w')
vim.keymap.set('n', '<C-w>;',  '<C-w>l')
vim.keymap.set('n', '<C-w>l',  '<C-w>k')
vim.keymap.set('n', '<C-w>k',  '<C-w>j')
vim.keymap.set('n', '<C-w>j',  '<C-w>h')
vim.keymap.set('n', '<C-w>h',  '')

vim.keymap.set('n', 's;',  '<C-w>l')
vim.keymap.set('n', 'sl',  '<C-w>k')
vim.keymap.set('n', 'sk',  '<C-w>j')
vim.keymap.set('n', 'sj',  '<C-w>h')
vim.keymap.set('', 'se', '<C-w>=')
vim.keymap.set('', 'sx', ':close<CR>')
