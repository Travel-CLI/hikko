-- Icons for autocompletion
return {
  unpack = function(use)
    use {
      'onsails/lspkind-nvim',
      config = function()
        require('plugins/lspkind')
      end
    }
  end
}
