require("lazy_plugins")
require('options')
require("keymaps")

vim.cmd 'colorscheme kanagawa'

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "rust" },  -- list of language that will be disabled
  },
}

require("bufferline").setup{}
require('plugin.bufferline')
require('plugin.whichkey')

require('lualine').setup()
require("toggleterm").setup{}


-- empty setup using defaults
-- require("nvim-tree").setup()

require("telescope").load_extension("file_browser")

-- LSP Setup

local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
  vim.keymap.set("n", "<leader>lf", vim.lsp.buf.code_action, bufopts)
end)
require('plugin.lsp')


require("auto-session").setup {
  log_level = "error",

  cwd_change_handling = {
    restore_upcoming_session = true, -- already the default, no need to specify like this, only here as an example
    pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
    post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
      require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
    end,
  },
}
