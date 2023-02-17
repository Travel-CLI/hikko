-- Treesitter text objects
return {
  unpack = function(use)
    use {
      'nvim-treesitter/nvim-treesitter-textobjects',
      requires = {
        'nvim-treesitter/nvim-treesitter'
      },
      config = function ()
        require'nvim-treesitter.configs'.setup{}
      end
    }
  end
}
