-- Autocompletion
return {
  unpack = function(use)
    use {
      'hrsh7th/nvim-cmp',
      requires = {
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-emoji',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'hrsh7th/cmp-nvim-lua',
        'rafamadriz/friendly-snippets',
      },
      config = function()
        require('plugins/cmp')
      end,
    }
  end
}
