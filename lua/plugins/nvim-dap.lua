return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio"
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        dapui.setup()

        dap.listeners.before.launch.dapui_config = function()
            -- when the debugger is launched open up the debug ui
            dapui.open()
        end

        vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })

        vim.keymap.set("n", "<leader>ds", dap.continue, { desc = "Debugger Start" })

        vim.keymap.set("n", "<leader>dc", dapui.close, {desc = "Debugger Close"})
    end
}
