-- Correctly highlight many languages
return {
  unpack = function(use)
    use {
      'nvim-treesitter/nvim-treesitter',
      config = function()
        require('plugins/tree-sitter')
      end
    }
  end
}
