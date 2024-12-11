return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        cmd = "Mason",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            },
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        depencencies = {
            "williamboman/mason.nvim",
        },
        opts = {
            ensure_installed = { "lua_ls" },
            handlers = {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        capabilities = vim.tbl_deep_extend(
                            "force",
                            vim.lsp.protocol.make_client_capabilities(),
                            require("cmp_nvim_lsp").default_capabilities())
                    }
                end,
                ["jdtls"] = function()
                    require('java').setup()
                    require('lspconfig').jdtls.setup({
                        capabilities = vim.tbl_deep_extend(
                            'force',
                            vim.lsp.protocol.make_client_capabilities(),
                            require('cmp_nvim_lsp').default_capabilities()),
                        flags = {
                            allow_incremental_sync = true,
                        },
                        settings = {
                            java = {
                                configuration = {
                                    runtimes = {
                                        {
                                            name = "JavaSE-21",
                                            path = "/usr/lib/jvm/java-21-openjdk",
                                            default = true
                                        },
                                        {
                                            name = "JavaSE-17",
                                            path = "/usr/lib/jvm/java-17-openjdk",
                                        },
                                    }
                                }
                            }
                        }
                    })
                end
                -- ["pyright"] = function()
                --     require("lspconfig").pyright.setup {
                --         capabilities = vim.tbl_deep_extend(
                --             "force",
                --             vim.lsp.protocol.make_client_capabilities(),
                --             require("cmp_nvim_lsp").default_capabilities()),
                --         settings = {
                --             python = {
                --                 analysis = {
                --                     autoImportCompletion = true,
                --                     autoSearchPaths = true,
                --                     diagnosticMode = 'openFilesOnly',
                --                     useLibraryCodeForTypes = true,
                --                     typeCheckingMode = 'basic',
                --                 }
                --             }
                --         },
                --     }
                -- end,
                -- ["lua_ls"] = function ()
                --     local lspconfig = require("lspconfig")
                --     lspconfig.lua_ls.setup {
                --         capabilities = vim.tbl_deep_extend(
                --             "force",
                --             {},
                --             vim.lsp.protocol.make_client_capabilities(),
                --             require("cmp_nvim_lsp").default_capabilities()
                --         ),
                --         settings = {
                --             Lua = {
                --                 diagnostics = {
                --                     globals = { "vim" }
                --                 }
                --             }
                --         }
                --     }
                -- end,
            }
        },
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "j-hui/fidget.nvim",
        },
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.dartls.setup({})
            lspconfig.gdscript.setup({
                capabilities = vim.tbl_deep_extend(
                    "force",
                    vim.lsp.protocol.make_client_capabilities(),
                    require("cmp_nvim_lsp").default_capabilities())
            })
        end
    },
    {
        "github/copilot.vim",
        lazy = false,
        enabled = false,
    },
    {
        "j-hui/fidget.nvim",
        opts = {
            notification = {
                window = {
                    winblend = 0,
                },
            }
        }
    },
    {
        "nvim-java/nvim-java",
    },
}
