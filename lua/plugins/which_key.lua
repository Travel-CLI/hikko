local function config()
  vim.o.timeout = true
  vim.o.timeoutlen = 300
  require("which-key").setup()
end

-- Which key plugin
return {
  unpack = function(use)
    use {
      "folke/which-key.nvim",
      config = config
    }
  end
}
