local function config()
  require('vgit').setup()
end
-- Fosus mode for code
return {
  unpack = function(use)
    use {
      'tanvirtin/vgit.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
      config = config
    }
  end
}
