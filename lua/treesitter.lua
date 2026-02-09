require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "haskell", "go", "c_sharp", "dart" },
  sync_install = true,
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
  modules = {},
  ignore_install = {},
})

