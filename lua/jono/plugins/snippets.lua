return {
	"L3MON4D3/LuaSnip",
    lazy = false,
	-- follow latest release.
	version = "v2.3.0", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
    config = function()
        local ls = require "luasnip"
        local types = require "luasnip.util.types"

        ls.config.set_config {
            history = true,
            update_events = "TextChanged,TextChangedI",
            enable_autosnippets = true
        }

        require("luasnip.loaders.from_lua").load { paths = "~/.config/nvim/lua/luasnippets" }

    end,
    keys = {
        {
            "<c-k>",
            function()
                local ls = require "luasnip"
                if ls.expand_or_jumpable() then
                    ls.expand_or_jump()
                end
            end,
            {"i", "s"}
        },
        {
            "c-j",
            function()
                local ls = require "luasnip"

                if ls.jumpable(-1) then
                    ls.jump(-1)
                end
            end
        }
    }
}
