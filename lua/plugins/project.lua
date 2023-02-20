local function config()
  require("project_nvim").setup {}
  require('telescope').load_extension('projects')
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
