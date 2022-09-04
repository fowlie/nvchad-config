local M = {}

M.mappings = {
  n = {
    ["<C-p>"] = { "<cmd> Telescope <CR>", "open Telescope" },
    ["<C-q>"] = { "<cmd> qa <CR>", "quit Neovim" },
    ["<leader>ts"] = { "<cmd> SymbolsOutline <CR>", "toggle symbol outline" },
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
