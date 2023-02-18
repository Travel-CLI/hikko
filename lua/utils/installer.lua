local M = {};

-- Use directive to activate plugins
M.use = nil;

-- Plugins list
M = {
  wakatime                          = function() require('plugins.wakatime').unpack(M.use) end,
  tender                            = function() require('plugins.tender').unpack(M.use) end,
  packer                            = function() require('plugins.packer').unpack(M.use) end,
  which_key                         = function() require('plugins.which_key').unpack(M.use) end,
  fidget                            = function() require('plugins.fidget').unpack(M.use) end,
  mason                             = function() require('plugins.mason').unpack(M.use) end,
  trouble                           = function() require('plugins.trouble').unpack(M.use) end,
  gitsigns                          = function() require('plugins.gitsigns').unpack(M.use) end,
  nvim_cmp                          = function() require('plugins.nvim-cmp').unpack(M.use) end,
  lsp_kind                          = function() require('plugins.lsp-kind').unpack(M.use) end,
  lualine                           = function() require('plugins.lualine').unpack(M.use) end,
  kommentary                        = function() require('plugins.kommentary').unpack(M.use) end,
  tree_sitter                       = function() require('plugins.tree-sitter').unpack(M.use) end,
  auto_pairs                        = function() require('plugins.auto-pairs').unpack(M.use) end,
  telescope                         = function() require('plugins.telescope').unpack(M.use) end,
  nvim_tree                         = function() require('plugins.nvim-tree').unpack(M.use) end,
  null_ls                           = function() require('plugins.null-ls').unpack(M.use) end,
  todo_comment                      = function() require('plugins.todo-comment').unpack(M.use) end,
  editorconfig                      = function() require('plugins.editorconfig').unpack(M.use) end,
  nightfox                          = function() require('plugins.nightfox').unpack(M.use) end,
  vgit                              = function() require('plugins.vgit').unpack(M.use) end,
  git_conflict                      = function() require('plugins.git_conflict').unpack(M.use) end,
  base16                            = function() require('plugins.base16').unpack(M.use) end,
  tree_sitter_text_objects          = function() require('plugins.treesitter-text-objects').unpack(M.use) end,
  twilight                          = function() require('plugins.twilight').unpack(M.use) end,
  yagc                              = function() require('plugins.yagc').unpack(M.use) end,
  monokai                           = function() require('plugins.monokai').unpack(M.use) end,
  kanagawa                          = function() require('plugins.kanagawa').unpack(M.use) end,
  project                           = function() require('plugins.project').unpack(M.use) end,
  projections                       = function() require('plugins.projections').unpack(M.use) end,

  -- Patterns
  patterns_basic                    = function()
    require('plugins.packer').unpack(M.use)
    require('plugins.mason').unpack(M.use)
    require('plugins.nvim-cmp').unpack(M.use)
    require('plugins.lsp-kind').unpack(M.use)
    require('plugins.lualine').unpack(M.use)
    require('plugins.tree-sitter').unpack(M.use)
    require('plugins.telescope').unpack(M.use)
    require('plugins.nvim-tree').unpack(M.use)
  end

}

return M;
