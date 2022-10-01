-- Installer for LSP
return {
  unpack = function(use)
    use {
      "williamboman/mason.nvim",
      requires = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
      },
      config = function()
        require('plugins/mason')
      end
    }
  end
}
