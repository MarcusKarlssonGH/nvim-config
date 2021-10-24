
require("keymappings")
require("colorscheme")
require("settings")
require("plugins")

-- Plugin configuration
require("nvim-cmp")
require("language-servers.sumneko")
require("mylsp")

-- require'lspconfig'.pyright.setup{} -- Move
-- Tree sitter
require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "python",
    "lua",
  }
}
-- LuaLine
require("lualine").setup{
  options = {
    theme = "moonfly" -- See https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
  }
}

require("nv-bufferline")
-- local nvim_tree_config = require("nvim-tree").config()
local tree_cb = require("nvim-tree.config").nvim_tree_callback
-- Can we just do something like setup.view.mappings.list?
require("nvim-tree").setup{
  view = {
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      }
    }
  }
}

require("Comment").setup()
require("which-key-config")
--require("nvim_comment").setup({line_mapping = "<C-/>", operator_mapping = "<C-/>"})

