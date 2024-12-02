return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "jdtls",
          "rust_analyzer",
          "clangd",
          "svelte",
          "sqlls",
          "dockerls",
          "bashls",
        }
      })
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    config = function()
      require("mason-nvim-dap").setup({
        ensure_installed = { "java-debug-adapter", "java-test" }
      })
    end
  },
  {
    "mfussenegger/nvim-jdtls",
    dependencies = {
      "mfussenegger/nvim-dap",
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.clangd.setup({})
      lspconfig.svelte.setup({})
      lspconfig.sqlls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.bashls.setup({})

      vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, { desc = "Code Documentation Hover" })
      vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Code Goto Definition" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
      vim.keymap.set("n", "<leader>cr", require("telescope.builtin").lsp_references, { desc = "Code Goto References" })
      vim.keymap.set("n", "<leader>ci", require("telescope.builtin").lsp_implementations, { desc = "Code Goto Implementations" })
      vim.keymap.set("n", "<leader>cR", vim.lsp.buf.rename, { desc = "Code Rename" })
      vim.keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, { desc = "Code Goto Declaration" })
    end
  }

}
