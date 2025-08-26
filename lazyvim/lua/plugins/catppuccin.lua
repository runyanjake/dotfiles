return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
        transparent_background = false,
        float = { transparent = false, solid = true },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
