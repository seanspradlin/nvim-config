require('nvim-tree').setup({
	auto_close = true,
	diagnostics = {
		enable = false,
		icons = {
		      hint = "",
		      info = "",
		      warning = "",
		      error = "",
		}
	},
  filters = {
    dotfiles = true
  }
})

vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_quit_on_open = 1

