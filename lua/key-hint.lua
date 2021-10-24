local wk = require('which-key')

wk.register({
    t = {
        ':terminal<cr>', 'Terminal'
    },
    b = {
        name = 'Buffer',
        a = {
            ':BufferCloseAllButCurrent<cr>', 'Close all but current'
        },
        h = {
            ':BufferCloseBuffersLeft<cr>', 'Close buffers to the left'
        },
        l = {
            ':BufferCloseBuffersRight<cr>', 'Close buffers to the right'
        }
    },
    f = {
        name = 'Find',
        f = {
            "<cmd>lua require('telescope.builtin').find_files()<cr>", 'Find File'
        },
        g = {
            "<cmd>lua require('telescope.builtin').live_grep()<cr>", 'Live Grep'
        },
        b = {
            "<cmd>lua require('telescope.builtin').buffers()<cr>", 'Buffers'
        },
        h = {
            "<cmd>lua require('telescope.builtin').help_tags()<cr>", 'Help'
        },
    },
    g = {
        '<cmd>lua require("neogit").open({ kind = "split" })<cr>', 'Git'
    },
    e = {
        ':NvimTreeToggle<cr>', 'File Explorer'
    },
    c = {
        ':BufferClose!<cr>', 'Close Buffer'
    },
    q = {
        ':xa<cr>', 'Quit'
    }
}, {
    mode = 'n',
    prefix = '<leader>',
    silent = true,
    noremap = true,
    nowait = false,
})

wk.setup({
    key_labels = {
        ["<space>"] = "SPC",
        ["<cr>"] = "RET",
        ["<tab>"] = "TAB",
    },
})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<S-h>', ':BufferPrevious<CR>', opts)
map('n', '<S-l>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<S-A-h>', ':BufferMovePrevious<CR>', opts)
map('n', '<S-A-l>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)

-- Panes
map('n', '<C-J>', '<C-W><C-J>', opts)
map('n', '<C-K>', '<C-W><C-K>', opts)
map('n', '<C-L>', '<C-W><C-L>', opts)
map('n', '<C-H>', '<C-W><C-H>', opts)

-- Terminal
map('t', '<Esc>', '<C-\\><C-n>', opts)
