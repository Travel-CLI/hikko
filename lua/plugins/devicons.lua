local function config()
  require'nvim-web-devicons'.setup {
    color_icons = true;
    default = true;
    strict = true;
  }
end

-- Web icons
return {
  unpack = function(use)
    use {
      'nvim-tree/nvim-web-devicons',
      config = config
    }
  end
}
