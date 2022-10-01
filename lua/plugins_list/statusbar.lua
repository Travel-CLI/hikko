-- Statusbar
return {
  unpack = function(use)
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = function()
        require('plugins/lualine')
      end
    }
  end
}
