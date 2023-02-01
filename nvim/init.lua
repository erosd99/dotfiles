require "packages"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.g.mapleader = " "

vim.cmd [[colorscheme dracula]]

require "org"
require "compiz"
require "telescope_config"
require "devicons"
require "tsconfig"
require "tester"
require "statline"
require "vcs"

require "mason".setup()

local lsp_opts = require "langserver"
local lspconfig = require "lspconfig"


lspconfig.pyright.setup {
    on_attach = lsp_opts.on_attach
}

lspconfig.omnisharp.setup {
	cmd = { "dotnet", "/home/daniel/Documents/OmniSharp/OmniSharp.dll" },
    on_attach = lsp_opts.on_attach,
    enable_roslyn_analyzers = true,
    enable_import_completion = true,
}

lspconfig.clangd.setup {
    on_attach = lsp_opts.on_attach
}

lspconfig.rust_analyzer.setup {
    on_attach = lsp_opts.on_attach
}

lspconfig.texlab.setup {
    on_attach = lsp_opts.on_attach
}

-- vim functions
vim.fn.sign_define(
  "DiagnosticSignError",
  { texthl = "DiagnosticSignError", text = "", numhl = "DiagnosticSignError" }
)
vim.fn.sign_define(
  "DiagnosticSignWarning",
  { texthl = "DiagnosticSignWarning", text = "", numhl = "DiagnosticSignWarning" }
)
vim.fn.sign_define(
  "DiagnosticSignHint",
  { texthl = "DiagnosticSignHint", text = "", numhl = "DiagnosticSignHint" }
)
vim.fn.sign_define(
  "DiagnosticSignInformation",
  { texthl = "DiagnosticSignInformation", text = "", numhl = "DiagnosticSignInformation" }
)
