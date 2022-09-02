local M = {}

M.mappings = {
  n = {
    ["<C-p>"] = { "<cmd> Telescope <CR>", "Open Telescope" },
    ["<C-q>"] = { "<cmd> qa <CR>", "Quit Neovim" },
  },
}

return M
