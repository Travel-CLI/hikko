require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "sumneko_lua",   -- LSP for Lua language
    "tsserver",      -- LSP for typescript and javascript
    "vuels",         -- LSP for Vue
    "rust_analyzer", -- LSP for Rust
    "emmet_ls",      -- LSP for Emmet (Vue, HTML, CSS)
    "cssls",         -- LSP for CSS
    "stylelint_lsp", -- Linter for CSS, Sass, Less
    "dockerls",      -- LSP for docker
    "prettierd",     -- Formatter for typescript, rust, javascript (prettier)
    "eslint_d",      -- Linter for JavaScript, Vue, TypeScript (eslint)
    "pyright",       -- LSP for Python
    "stylua"         -- Formatter for Lua
  }
});

require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end,
}

