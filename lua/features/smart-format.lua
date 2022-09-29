require('helpers.alias');
require('helpers.keybindings');

Formatter = {};

local function default_format()

  -- Current line and character
  cmd(api.nvim_replace_termcodes('normal mo', true, true, true));

  -- Format code
  cmd(api.nvim_replace_termcodes('normal gg=Ggg', true, true, true));

  -- Go to previous line and character
  cmd(api.nvim_replace_termcodes("normal 'o", true, true, true));
end

function Formatter.format()

  -- Lsp clients
  local clients = lsp.get_active_clients()[1];

  -- If there's not clients - use default formatter
  -- Also check if LSP client has a formatter option
  if clients and clients.server_capabilities.documentFormattingProvider then
    lsp.buf.format();
    return;
  end

  -- Format a code via formatter
  default_format();
end

-- Map new value
nm('gf', "<cmd>lua Formatter.format()<CR>");

return Formatter;
