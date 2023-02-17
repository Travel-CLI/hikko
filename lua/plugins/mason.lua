-- Installer for LSP
local function config()
  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = {
      "lua_ls",             -- LSP for Lua language
      "tsserver",           -- LSP for Typescript and Javascript
      "rust_analyzer",      -- LSP for Rust
      "emmet_ls",           -- LSP for Emmet (Vue, HTML, CSS)
      "cssls",              -- LSP for CSS
      "stylelint_lsp",      -- Linter for CSS, Sass, Less
      "dockerls",           -- LSP for Docker
      "pyright",            -- LSP for Python
      "volar"               -- LSP for Vue
    }
  });

  require("mason-lspconfig").setup_handlers {
    function (server_name)
      require("lspconfig")[server_name].setup {}
    end,
  }
end
return {
  unpack = function(use)
    use {
      "williamboman/mason.nvim",
      requires = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
      },
      config = config
    }
  end
}
