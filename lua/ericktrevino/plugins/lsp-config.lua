return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "sumneko_lua", "eslint" }
    })

    local on_attach = function(_, _)

    end

    require("lspconfig").sumneko_lua.setup{
      on_attach = on_attach
    }

    require("lspconfig").eslint.setup({
      on_attach = function(_, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          command = "EslintFixAll",
        })
      end
    })

  end
}
