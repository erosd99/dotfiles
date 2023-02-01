local dap = require("dap")
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)

require("dapui").setup()
