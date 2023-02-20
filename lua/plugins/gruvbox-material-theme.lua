local function config()
  vim.cmd[[
    if has('termguicolors')
      set termguicolors
    endif

    set background=dark
    let g:gruvbox_material_background = 'soft'
  ]]
end
return {
  unpack = function(use)
	  use {
	    'sainnhe/gruvbox-material',
      config = config
	  }
  end
}


