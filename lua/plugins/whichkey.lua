return {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
        local which_key = require('which-key')
        which_key.setup()

        which_key.register({
            ['<leader>/'] = {name = "Comments", _ = 'which_key_ignore'},
            ['<leader>c'] = { name = 'Code', _ = 'which_key_ignore' },
            ['<leader>d'] = {name = 'Debug' , _ = 'which_key_ignore' },
            ['<leader>e'] = {name = 'Explorer', _ = 'which_key_ignore'},
            ['<leader>f'] = { name = 'Find', _ = 'which_key_ignore' },
            ['<leader>J'] = { name = 'Java', _ = 'which_key_ignore' },
            ['<leader>w'] = {name = 'Window', _ = 'which_key_ignore'}
        })
    end
}
