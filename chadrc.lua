local M = {}

M.ui = {
  theme = "vscode_dark",
}

M.mappings = require "custom.mappings"

M.plugins = {
  user = {
    ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
    },

    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
        require "custom.plugins.null-ls"
      end,
    },

    -- smooth scrolling
    ["declancm/cinnamon.nvim"] = {
      config = function()
        require("cinnamon").setup()
      end,
    },

    ["folke/which-key.nvim"] = {
      disable = false,
    },
  },

  override = {
    ["nvim-treesitter/nvim-treesitter"] = {
      ensure_installed = {
        "lua",
        "html",
        "css",
        "go",
      },
    },

    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "emmet-ls",
        "json-lsp",

        -- go
        "gopls",
      },
    },
  },
}

return M
