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

  -- Сохранять сессию при выходе из Vim
  local Session = require("projections.session")
  vim.api.nvim_create_autocmd({ 'VimLeavePre' }, {
    callback = function() Session.store(vim.loop.cwd()) end,
  })

  -- Переключиться на сессию проекта, если Vim был запущен в директории проекта
  local switcher = require("projections.switcher")
  vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function()
      if vim.fn.argc() == 0 then switcher.switch(vim.loop.cwd()) end
    end,
  })
end

return {
  unpack = function(use)
    use {
      'gnikdroy/projections.nvim',
      config = config
    }
  end
}
