-- Auto pairs for quotes and brackets
return {
  unpack = function(use)
    use {
      'windwp/nvim-autopairs',
      config = function()
        require('nvim-autopairs').setup {}
      end
    }
  end
}
