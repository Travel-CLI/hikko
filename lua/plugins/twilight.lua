-- Fosus mode for code
return {
  unpack = function(use)
    use {
      "folke/twilight.nvim",
      config = function()
        require("twilight").setup {
        }
      end
    }
  end
}
