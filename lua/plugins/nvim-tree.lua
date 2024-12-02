return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
    require("nvim-tree").setup({
      hijack_netrw = true,
      auto_reload_on_write = true,
    })
  end
}
