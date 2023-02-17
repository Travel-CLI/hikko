require('utils.bootstrap');
local install = require('utils.installer');

-- Checking plugins on startup
local function check_plugins()

  require('packer').startup(function(use)

    -- Settings a use value
    install.use = use;

    install['packer']()
    install['editorconfig']()
    install['wakatime']()
    install['fidget']()
    install['mason']()
    install['trouble']()
    install['vgit']()
    install['nvim_cmp']()
    install['lsp_kind']()
    install['lualine']()
    install['kommentary']()
    install['tree_sitter']()
    install['auto_pairs']()
    install['telescope']()
    install['nvim_tree']()
    install['todo_comment']()
    install['kanagawa']()
    install['project']()
  end)
end

-- If packer doesn't exists
if Bootstrap.check_packer() then
  print(1);
  Bootstrap.install();
  check_plugins()
  cmd("PackerSync")
  cmd("PackerCompile")
else

  -- If packer exists - simply load plugins
  check_plugins()
end
