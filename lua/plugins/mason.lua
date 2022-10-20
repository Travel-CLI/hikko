require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "sumneko_lua",   -- LSP for Lua language
    "tsserver",      -- LSP for typescript and javascript
    "rust_analyzer", -- LSP for Rust
    "emmet_ls",      -- LSP for Emmet (Vue, HTML, CSS)
    "cssls",         -- LSP for CSS
    "stylelint_lsp", -- Linter for CSS, Sass, Less
    "dockerls",      -- LSP for docker
    "pyright",       -- LSP for Python
  }
});

require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end,
}

