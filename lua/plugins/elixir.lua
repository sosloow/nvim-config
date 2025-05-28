return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.elixirls.setup({
        cmd = { "/home/stepan/.local/share/elixir-ls/language_server.sh" },
        dialyzerEnabled = false,
        fetchDeps = false,
        enableTestLenses = false,
        enableFormatter = true,
        fileWatching = true,
      })

      lspconfig.tailwindcss.setup({
        init_options = {
          userLanguages = {
            elixir = "html-eex",
            eelixir = "html-eex",
            heex = "html-eex",
          },
        },
      })
    end,
  },
}
