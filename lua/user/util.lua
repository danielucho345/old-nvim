local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap


local function relative_file_path()
 -- local path = vim.fn.expand('%:h') .. '\\' .. vim.fn.expand('%:t')
 local path = vim.fn.expand('%')
 vim.fn.setreg("+", path)
 vim.notify('Copied "' .. path .. '" to the clipboard!')

end

local function full_file_path()
 local path = vim.fn.expand('%:p')
 vim.fn.setreg("+", path)
 vim.notify('Copied "' .. path .. '" to the clipboard!')

end

local function root_file_path()
 -- Copy the current file working directory  

 local path = vim.fn.expand('%:h')
 vim.fn.setreg("+", path)
 vim.notify('Copied "' .. path .. '" to the clipboard!')

end

-- Relative file path
vim.api.nvim_create_user_command("CpRelFilePath", function()
 relative_file_path()
end, {})

-- Full file path 
vim.api.nvim_create_user_command("CpFullFilePath", function()
 full_file_path()
end, {})

-- Root folder of the current file  
vim.api.nvim_create_user_command("CpRootFilePath", function()
 root_file_path()
end, {})


-- Keymaps
keymap("n","<leader>rp",":CpRelFilePath<CR>",opts) -- Relative Path
keymap("n","<leader>fp",":CpFullFilePath<CR>",opts) -- Full Path
keymap("n","<leader>Fp",":CpRootFilePath<CR>",opts) -- Folder Path

