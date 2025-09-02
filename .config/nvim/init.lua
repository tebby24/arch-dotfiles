vim.g.mapleader = " "

vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"

vim.opt.swapfile = false

vim.pack.add({
    { src = "https://github.com/vague2k/vague.nvim" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
    { src = "https://github.com/echasnovski/mini.pick" },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = "https://github.com/iamcco/markdown-preview.nvim",    build = "cd app && yarn install" },
    { src = "https://github.com/lervag/vimtex" },
})

require "mini.pick".setup()
require "oil".setup()

vim.g.mkdp_browser = "chromium"

-- Vimtex configuration
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_compiler_latexmk = {
    options = {
        '-pdf',
        '-shell-escape',
        '-verbose',
        '-file-line-error',
        '-interaction=nonstopmode',
    },
}

local map = vim.keymap.set
map('n', '<leader>f', ":Pick files<CR>")
map('n', '<leader>h', ":Pick help<CR>")
map('n', '<leader>e', ":Oil<CR>")
map('n', '<leader>lf', vim.lsp.buf.format)

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({})
lspconfig.tinymist.setup({})
lspconfig.clangd.setup({})
lspconfig.texlab.setup({}) 


-- colorscheme
require "vague".setup({ transparent = true })
vim.cmd("colorscheme vague")
vim.cmd("hi Normal guibg=NONE")
vim.cmd(":hi statusline guibg=NONE")
