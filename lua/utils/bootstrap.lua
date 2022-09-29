require('helpers/alias')

-- Initializing module
Bootstrap = {};

-- Get path for install packer
local function get_path()

	-- Path to neovim data folder
	return fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
end

-- Function for checking if packer ok
function Bootstrap.check_packer()

	-- Is folder empty or doesn't exist
	return fn.empty(fn.glob(get_path())) > 0;
end

-- Function for bootstrapping packer
function Bootstrap.install()
  vim.pretty_print('Installing Packer');
  cmd("!git clone --depth 1 https://github.com/wbthomason/packer.nvim " .. get_path());
  cmd[[packadd packer.nvim]]
end

return Bootstrap;
