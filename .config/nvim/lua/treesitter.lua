-- local configs = require("nvim-treesitter.configs")
-- configs.setup {
--   ensure_installed = "all",
--   sync_install = false,
--   ignore_install = { "" }, -- List of parsers to ignore installing
--   highlight = {
--     enable = true, -- false will disable the whole extension
--     disable = { "" }, -- list of language that will be disabled
--     additional_vim_regex_highlighting = true,

--   },
--   indent = { enable = true, disable = { "yaml" } },
-- }

local configs = require("nvim-treesitter.configs")
configs.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "go", "python", "rust", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "" },

  indent = { enable = true, disable = { "yaml" } },

  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
}
