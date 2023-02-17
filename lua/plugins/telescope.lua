-- Popup for searching for files, buffers, languages, git blames etc.
return {
  unpack = function(use)
    use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } },
      config = function()
        require('plugins/telescope')
      end
    }
  end
}
