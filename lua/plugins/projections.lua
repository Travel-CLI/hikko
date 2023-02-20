-- Warning: This plugin must be used after initialization of telescope
local function config()
  require("projections").setup({
    workspaces = {
      "~/Development",
      "~/dev",
    },
    patterns = { ".git", ".svn", ".hg" },
  })

  -- Добавим плагин для Telescope
  require('telescope').load_extension('projections')
end

return {
  unpack = function(use)
    use {
      'gnikdroy/projections.nvim',
      config = config
    }
  end
}
