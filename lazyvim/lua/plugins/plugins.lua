return {
  -- Add the Gruvbox colorscheme
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Ensure Gruvbox loads first
    config = function()
      vim.cmd("colorscheme gruvbox") -- Set Gruvbox as the default colorscheme
    end,
  },
  -- VimTeX
  {
    "lervag/vimtex",
    ft = { "tex" }, -- Only load VimTeX for LaTeX files
    config = function()
      -- Add VimTeX-specific settings
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_method = "latexmk"
    end,
  },
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
}
