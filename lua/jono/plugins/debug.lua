return {
    {
        "mfussenegger/nvim-dap",
        keys = {
            {
                "<leader>dc",
                "<cmd>lua require('dap').continue()<CR>",
                "DAP - Continue"
            },
            {
                "<leader>db",
                "<cmd>lua require('dap').toggle_breakpoint()<CR>",
                "DAP - Toggle Breakpoint"
            },
        },
        config = function()
            local dap = require("dap")

            dap.adapters.lldb = {
                type = "executable",
                command = "/usr/bin/lldb",
                name = "lldb"
            }

            dap.configurations.cpp = {
                {
                    name = "Launch",
                    type = "lldb",
                    request = "launch",
                    program = function()
                        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                        end,
                    cwd = "${workspaceFolder}",
                    stopOnEntry = true,
                    args = {},
                    runInTerminal = false
                }
            }
    end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap" },
    }
}
