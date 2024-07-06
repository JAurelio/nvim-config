-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {

    -- Quality of Life
	{'tpope/vim-sensible'},
    {'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {"christoomey/vim-tmux-navigator",
      cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
      },
      keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      },
    },

    -- Telescope
	{'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'nvim-telescope/telescope-file-browser.nvim'},

    -- TreeSitter
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {'nvim-treesitter/nvim-treesitter-context' },

    {'nvim-tree/nvim-web-devicons'},
    -- Buffer and Lualine
    -- {'nvim-tree/nvim-web-devicons'},
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- Theme
    {'rebelot/kanagawa.nvim'},

    {'akinsho/toggleterm.nvim', version = "*", config = true},
    -- Undo Tree
    {'mbbill/undotree'},
    {'akinsho/toggleterm.nvim'},
   -- {'nvim-tree/nvim-tree.lua'}, Super slow for some reason
    -- CMD and LSP
    --{"williamboman/mason.nvim"},
    --{"williamboman/mason-lspconfig.nvim"},
    {"VonHeikemen/lsp-zero.nvim"},
    {"neovim/nvim-lspconfig"}, 

    -- nvim-cmp
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"hrsh7th/nvim-cmp"},

    -- Lua Snip
    {"L3MON4D3/LuaSnip"},
    {"saadparwaiz1/cmp_luasnip"},
    {"rmagatti/auto-session"},

    -- Keybinds
    {"folke/which-key.nvim"},

    -- Typescript LSP (Frida)
    -- npm install -g typescript typescript-language-server
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "kanagawa" } },
  -- automatically check for plugin updates
  checker = { enabled = false },
})
