local function config()
  require('fidget').setup({
    text = {
      spinner = "earth",
      commenced = "LSP is loading",
      completed = "LSP is ready!"
    },
    align = {
      bottom = false
    }
  })
end

return {
  unpack = function(use)
    use {
      'j-hui/fidget.nvim',
      config = config
    }
  end
}
