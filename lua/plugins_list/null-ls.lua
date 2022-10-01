-- Null-ls
return {
  unpack = function(use)
    use {
      'jose-elias-alvarez/null-ls.nvim',
      config = function()
        require('plugins/null-ls')
      end,
      requires = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/nvim-cmp",
      },
    }
  end
}
