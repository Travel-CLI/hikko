-- File explorer
return {
  unpack = function(use)
    use {
      'kyazdani42/nvim-tree.lua',
      config = function()
        require('plugins/nvim-tree')
      end
    }
  end
}
