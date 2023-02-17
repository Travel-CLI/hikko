local function config()
  require("project_nvim").setup {}
end

-- Lua
return {
  unpack = function(use)
    use {
      "ahmedkhalf/project.nvim",
      config = config
    }
  end
}
