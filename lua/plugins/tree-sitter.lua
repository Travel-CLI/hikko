-- Correctly highlight many languages
local function config()
  -- Включаем подсветку синтаксиса
  require'nvim-treesitter.configs'.setup {

    -- Нужные парсеры
    ensure_installed = { "c", "lua", "typescript", "javascript", "rust" },

    -- Устанавливать парсеры синхронно
    sync_install = false,

    -- Подсветка
    highlight = {

      -- Включить расшируение
      enable = true,
      disable = {},
    },

    indent = {

      -- Включить indent
      enable = true,
      disable = {},
    }
  }
end

return {
  unpack = function(use)
    use {
      'nvim-treesitter/nvim-treesitter',
      config = config
    }
  end
}
