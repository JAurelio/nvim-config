vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.tabstop = 4                             -- insert 2 spaces for a tab
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.undofile = true

vim.cmd 'filetype plugin indent on'
vim.cmd 'set wildmode=longest,list'
vim.cmd 'syntax on'
vim.cmd 'set showmatch'
vim.cmd 'set incsearch'
vim.cmd 'set timeoutlen=350'
