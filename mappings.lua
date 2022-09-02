local M = {}

M.mappings = {
  n = {
    ["<C-p>"] = { "<cmd> Telescope <CR>", "Open Telescope" },
    ["<C-q>"] = { "<cmd> qa <CR>", "Quit Neovim" },
    ["<leader>ts"] = { "<cmd> SymbolsOutline <CR>", "Toggle symbol outline" },
  },
}

return M
