return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = "all",
    ignore_install = {},
    highlight = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    indent = {
      enable = true,
    },
  },
}
