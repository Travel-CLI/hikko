-- Lualine Statusbar
local function config()
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {},
      always_divide_middle = true,
      globalstatus = false,
    },
    sections = {
      lualine_c = {'filename', 'lsp_progress'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
  }
end
return {
  unpack = function(use)
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = config
    }
  end
}
