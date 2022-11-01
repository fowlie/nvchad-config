local M = {}

M.mappings = {
  n = {
    ["<C-p>"] = { "<cmd> Telescope <CR>", "open Telescope" },
    ["<C-q>"] = { "<cmd> qa <CR>", "quit Neovim" },
    ["<leader>ts"] = { "<cmd> SymbolsOutline <CR>", "toggle symbol outline" },

    -- switch between windows with colemak-dh
    ["<A-n>"] = { "<C-w>h", "window left" },
    ["<A-o>"] = { "<C-w>l", "window right" },
    ["<A-e>"] = { "<C-w>j", "window down" },
    ["<A-i>"] = { "<C-w>k", "window up" },

    -- line numbers
    ["<leader>n"] = { "<cmd> set nu! <CR>", "toggle line number" },
    ["<leader>rn"] = { "<cmd> set rnu! <CR>", "toggle relative number" },
  },
}

M.nvterm = {
  t = {
    -- toggle in terminal mode
    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },

  n = {
    -- toggle in normal mode
    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
}

M.neotest = {
  n = {
    ["<leader>tn"] = {
      function()
        require("neotest").run.run()
      end,
      "run the nearest test",
    },
    ["<leader>tf"] = {
      function()
        require("neotest").run.run(vim.fn.expand "%")
      end,
      "run tests in current file",
    },
    ["<leader>to"] = {
      function()
        require("neotest").output.open()
      end,
      "open test output",
    },
  }
}

return M
