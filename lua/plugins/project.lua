return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "~/Projects/coc_archivist/",
      "~/Projects/rust/deej-oled/",
      "~/Projects/mahjong/",
      "~/coding/work/punto-pago-server/",
      "~/Projects/learn/elixir/",
    },
    -- picker = {
    --   type = "fzf-lua",
    -- },
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "ibhagwan/fzf-lua" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
  keys = {
    { "<leader>p", "<cmd>NeovimProjectDiscover<cr>", desc = "Projects" },
  },
}
