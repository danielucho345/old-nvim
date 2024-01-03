local M = {
}
function M.config()
  local configs = require "nvim-treesitter.configs"

  configs.setup {
    ensure_installed = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "python",
      "rust",
      "typescript",
      "javascript",
      "go",
      "html",
      "htmldjango",
      "css",
    },                       -- put the language you want in this array
    -- ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = { "" }, -- List of parsers to ignore installing
    sync_install = true,     -- install languages synchronously (only applied to `ensure_installed`)

    highlight = {
      enable = true,      -- false will disable the whole extension
      disable = { "css" }, -- list of language that will be disabled
    },
    autopairs = {
      enable = true,
    },
    indent = { enable = true, disable = { } },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
      additional_vim_regex_highlighting = true,
  }
end

return M
