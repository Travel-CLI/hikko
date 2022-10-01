require('utils.bootstrap');
local install = require('utils.installer');

-- Checking plugins on startup
local function check_plugins()

  require('packer').startup(function(use)

    -- Settings a use value
    install.use = use;

    install['packer']()
    install['editorconfig']()
    install['yagc']()
    install['tender']()
    install['wakatime']()
    install['fidget']()
    install['mason']()
    install['trouble']()
    install['gitsigns']()
    install['nvim_cmp']()
    install['lsp_kind']()
    install['statusbar']()
    install['kommentary']()
    install['tree_sitter']()
    install['tree_sitter_text_objects']()
    install['auto_pairs']()
    install['telescope']()
    install['nvim_tree']()
    install['null_ls']()
    install['todo_comment']()
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
