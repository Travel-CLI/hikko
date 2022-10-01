-- LSP Progressbar
return {
  unpack = function(use)
    use {
      'j-hui/fidget.nvim',
      config = function()
        require('plugins/fidget')
      end,
    }
  end
}
