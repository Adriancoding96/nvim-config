return {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
        local which_key = require('which-key')

        which_key.register({
          { "<leader>/", group = "Comments" },
          { "<leader>/_", hidden = true },

          { "<leader>c", group = "Code" },
          { "<leader>c_", hidden = true },

          { "<leader>d", group = "Debug" },
          { "<leader>d_", hidden = true },

          { "<leader>e", group = "Explorer" },
          { "<leader>e_", hidden = true },

          { "<leader>f", group = "Find" },
          { "<leader>f_", hidden = true },

          { "<leader>J", group = "Java" },
          { "<leader>J_", hidden = true },

          { "<leader>w", group = "Window" },
          { "<leader>w_", hidden = true },
        })
    end
} 
