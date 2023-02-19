require('utils.bootstrap');
local install = require('utils.installer');

-- Checking plugins on startup
local function check_plugins()

  require('packer').startup(function(use)

    -- Settings a use value
    install.use = use;

    -- Using a pattern with plugins
    install['patterns_basic']()

    -- Extra plugins
    install['editorconfig']()
    install['wakatime']()
    install['fidget']()
    install['trouble']()
    install['vgit']()
    install['kommentary']()
    install['auto_pairs']()
    install['todo_comment']()
    install['projections']()
    install['gruvbox_material_theme']()
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
