local dap = require('dap')
dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb', -- adjust as needed, must be absolute path
    name = 'lldb'
}

dap.configurations.cpp = {
    {
        name = 'Launch',
        type = 'lldb',
        request = 'launch',
        program = '/usr/bin/bazel',
        args = { function() vim.fn.input('bazel run ') end, '--config', 'debug' },
        -- program = function()
        -- return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/bazel-bin/', 'file')
        -- end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,

        -- 💀
        -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
        --
        --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
        --
        -- Otherwise you might get the following error:
        --
        --    Error on launch: Failed to attach to the target process
        --
        -- But you should be aware of the implications:
        -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
        -- runInTerminal = false,
    },
}

-- Keymaps

vim.keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
