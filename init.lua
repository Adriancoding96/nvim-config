local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- clone latest stable realease of lazy if not found in path
if not (vim.uv or vim.loop).fs_stat(lazy_path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazy_path
  })
end

vim.opt.rtp:prepend(lazy_path)

-- lazy configuration
local opts = {
  change_detection = {
    notify = false
  },
  checker = {
    enabled = true,
    notify = false
  },
}

require("config.options")
require("config.keymaps")
require("config.autocmds")
require("lazy").setup("plugins", opts);
