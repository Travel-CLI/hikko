-- Git
return {
  unpack = function(use)
	  use {
	    'lewis6991/gitsigns.nvim',
	    tag = 'release',
	    config = function()
	      require('gitsigns').setup()
	    end
	  }
  end
}
