return {
  { "mhartington/oceanic-next" },
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
