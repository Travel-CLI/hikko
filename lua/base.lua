if vim.g.vscode then
  require('features.search');
  require('features.clipboard');
  require('features.standard-plugins');
else
  require('features.theme');
  require('features.tabs');
  require('features.wildmenu');
  require('features.search');
  require('features.clipboard');
  require('features.windows');
  require('features.encoding');
  require('features.hooks');
  require('features.standard-plugins');
  require('features.smart-format');
end
