local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

-- For a complete list of all available builtins, check out:
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  formatting.gofmt,
  formatting.prettier,
  formatting.shfmt,
  formatting.stylua,
  formatting.fish_indent,
  diagnostics.fish,
  -- diagnostics.pylint,
}

null_ls.setup {
   debug = false,
   sources = sources,
}
