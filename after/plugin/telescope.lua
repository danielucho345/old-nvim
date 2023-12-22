local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})

-- vim.keymap.set('n','<leader>ps',function()
-- 	builtin.grep_string({search=vim.fn.input('Grep -->')})
-- end)

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap('n','<leader>ab',':Telescope buffers<CR>',opts) --all buffers
keymap('n','<leader>ps',':Telescope live_grep<CR>',opts) --proyect search


