return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = "Search Files" })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Find with Grep" })
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "Find Diagnostics" })
      vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = "Find recent files" })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      local actions = require("telescope.actions")
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        },
        mappings = {
          i = {
            ["<C-n>"] = actions.cycle_history_next,
            ["<C-p>"] = actions.cycle_history_prev,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          }
        },
        require("telescope").load_extension("ui-select")
      })
    end
  }
}
