return {
    {
        "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",
            config = function() 
                local configs = require("nvim-treesitter.configs")

                configs.setup {
                    ensure_installed = { 
                        "c", 
                        "cpp", 
                        "lua", 
                        "python", 
                        "rust", 
                        "bash", 
                        "json", 
                        "yaml", 
                        "html", 
                        "css", 
                        "javascript", 
                        "typescript", 
                    },
                    sync_install = false,
                    autoinstall = true,
                    highlight = { 
                        enable = true,
                        additional_vim_regex_highlighting = false,
                    },
                    indent = { enable = true },
                }
        end,
    }
}
