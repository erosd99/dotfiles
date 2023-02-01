require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "python" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  pyfold = {
    enable = true,
    custom_foldtext = true,
  },
}
