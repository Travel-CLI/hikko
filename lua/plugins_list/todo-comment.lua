-- Todo comments highlight
return {
  unpack = function(use)
    use {
      'folke/todo-comments.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function ()
        require('plugins/todo')
      end
    }
  end
}
