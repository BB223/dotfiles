return {
    {
        'mfussenegger/nvim-dap',
        config = function ()
            local dap = require('dap')
            dap.adapters.godot = {
                type = 'server',
                host = '127.0.0.1',
                port = 6006,
            }
            dap.configurations.gdscript = {
                {
                    type = "godot",
                    request = "launch",
                    name = "Launch scene",
                    project = "${workspaceFolder}",
                },
            }
        end,
    },
    {
        'jay-babu/mason-nvim-dap.nvim',
        dependencies = {
            'williamboman/mason.nvim',
            'mfussenegger/nvim-dap',
        },
        cmd = {
            "DapInstall",
            "DapUninstall"
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
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        opts = {},
        config = function(_, opts)
            local dap, dapui = require('dap'), require('dapui')
            dapui.setup(opts)
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open({})
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close({})
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close({})
            end
        end,
    },
    {
        'theHamsta/nvim-dap-virtual-text',
        opts = {},
    },
}
