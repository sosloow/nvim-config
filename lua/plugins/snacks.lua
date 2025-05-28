return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
        },
        files = {
          ignored = true,
          hidden = true,
          exclude = { "_build/", "deps/", ".elixir_ls" },
        },
      },
    },
  },
}
