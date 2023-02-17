-- Null-ls
local function config()
  local null_ls = require('null-ls');
  null_ls.setup({
    sources = {
      null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.eslint_d
    },
  })
end

return {
  unpack = function(use)
    use {
      'jose-elias-alvarez/null-ls.nvim',
      config = config,
      requires = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/nvim-cmp",
      },
    }
  end
}
