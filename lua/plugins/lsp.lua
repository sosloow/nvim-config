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

      lspconfig.tsserver.setup({
        handlers = {
          ["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
            if result.diagnostics ~= nil then
              -- Filter out specific diagnostic codes
              result.diagnostics = vim.tbl_filter(function(diagnostic)
                return diagnostic.code ~= 80006 and diagnostic.code ~= 80001
              end, result.diagnostics)
            end
            vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
          end,
        },
      })
      lspconfig.eslint.setup({})
    end,
  },
}
