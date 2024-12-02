return {
  "nvim-treesitter/nvim-treesitter",

  build = ':TSUpdate',
  config = function()
    local ts_config = require("nvim-treesitter.configs")
    ts_config.setup({
      ensure_installed = {
        "vim",
        "vimdoc",
        "lua",
        "java",
        "javascript",
        "typescript",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "gitignore",
        "rust",
        "c",
        "cpp",
        "svelte",
      },
      highlight = { enable = true },
    })
  end
}

