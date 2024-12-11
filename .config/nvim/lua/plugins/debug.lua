return {
    {
        'mfussenegger/nvim-dap',
        config = function()
            local dap = require('dap')
            dap.adapters.godot = {
                type = 'server',
                host = '127.0.0.1',
                port = 6006,
            }
            dap.adapters.gdb = {
                type = 'executable',
                command = 'gdb',
                args = { '--interpreter=dap', '--eval-cammand', 'set print pretty on' }
            }
            dap.configurations.rust = {
                {
                    name = "Launch",
                    type = "gdb",
                    request = "launch",
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                    end,
                    cwd = "${workspaceFolder}",
                },
            }
        end
    },
    {
        'jay-babu/mason-nvim-dap.nvim',
        dependencies = {
            'williamboman/mason.nvim',
            'mfussenegger/nvim-dap',
        },
        opts = {
            handlers = {
                function(config)
                    require('mason-nvim-dap').default_setup(config)
                end,
            }
        }
    },
    {
        'rcarriga/nvim-dap-ui',
        config = true,
    }
}
