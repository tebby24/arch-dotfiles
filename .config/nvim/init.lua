vim.g.mapleader = " "

vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false


vim.pack.add({
  "https://github.com/vague2k/vague.nvim",
})

vim.cmd("colorscheme vague")
vim.cmd(":hi statusline guibg=NONE")

