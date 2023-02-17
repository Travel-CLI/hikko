-- File explorer
local function config()
  require("nvim-tree").setup({
    sort_by = "case_sensitive",
    update_focused_file = {
      enable = true,
      update_root = false,
      ignore_list = {},
    },
    view = {
      adaptive_size = true,
      mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
      },
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })
end

return {
  unpack = function(use)
    use {
      'kyazdani42/nvim-tree.lua',
      config = config
    }
  end
}
