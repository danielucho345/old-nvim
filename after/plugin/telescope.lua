local finders = {}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})

-- vim.keymap.set('n','<leader>ps',function()
-- 	builtin.grep_string({search=vim.fn.input('Grep -->')})
-- end)

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap('n','<leader>ps',':Telescope live_grep<CR>',opts) --proyect search

local dropdown_theme = require('telescope.themes').get_dropdown({
  results_height = 20;
  trim = true;
  winblend = 20;
  width = 0.8;
  prompt_title = 'Current Buffers';
  previewer = false;
  borderchars = {
    prompt = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
    results = {' ', '▐', '▄', '▌', '▌', '▐', '▟', '▙' };
    preview = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
  };
})

finders.fd_in_nvim = function()
  local opts_drop= vim.deepcopy(dropdown_theme)
  opts.prompt_prefix = "searching 🔍>"
  builtin.buffers(opts_drop)
end

vim.keymap.set("n","<leader>pb",function ()
finders.fd_in_nvim()
end)
