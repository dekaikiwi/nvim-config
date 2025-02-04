return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
            "L3MON4D3/LuaSnip"
        },
        config = function()
            local cmp = require "cmp";

            cmp.setup({
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
                mapping = cmp.mapping.preset.insert({
                  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                  ['<C-f>'] = cmp.mapping.scroll_docs(4),
                  ['<C-Space>'] = cmp.mapping.complete(),
                  ['<C-e>'] = cmp.mapping.abort(),
                  ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                    sources = cmp.config.sources({
                      { name = 'nvim_lsp' },
                      -- { name = 'vsnip' }, -- For vsnip users.
                      { name = 'luasnip' }, -- For luasnip users.
                      -- { name = 'ultisnips' }, -- For ultisnips users.
                      -- { name = 'snippy' }, -- For snippy users.
                    }, {
                      -- { name = 'buffer' },
                    })
            })
        end

    },
    {
      "olimorris/codecompanion.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
      config = function()
        local codecompanion = require "codecompanion";
        local codecompanion_adapters = require "codecompanion.adapters";

        codecompanion.setup({
            adapters = {
                ollama = function()
                    return codecompanion_adapters.extend("ollama", {
                        schema = {
                            model = {
                                default = "deepseek-r1:1.5b"
                            },
                        },
                        env = {
                            url = "https://ollama.internal.dekai.kiwi",
                        },
                        parameters = {
                            sync = true
                        }
                    })
                end,
            },
            strategies = {
                chat = {
                    adapter = "ollama"
                },
                inline = {
                    adapter = "ollama"
                },
            },
        })

      end
    },
    -- {
    --     "zbirenbaum/copilot.lua",
    --     config = function()
    --         require("copilot").setup({
    --             panel = {
    --                 auto_refresh = true
    --             },
    --             suggestion = {
    --                 auto_trigger = true,
    --                 keymap = {
    --                     accept = "<Tab>",
    --                 }
    --             }-- Your configuration comes here
    --         })
    --     end
    -- },
}
