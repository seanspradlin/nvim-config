-- Toggle variant
vim.api.nvim_set_keymap('n', '<c-m>', [[<cmd>lua require('rose-pine.functions').toggle_variant()<cr>]], { noremap = true, silent = true })
vim.g.rose_pine_variant = 'base'
vim.cmd('colorscheme rose-pine')
