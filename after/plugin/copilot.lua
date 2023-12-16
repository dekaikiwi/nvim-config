require("copilot").setup({
    panel = {
        auto_refresh = true
    },
    suggestion = {
        auto_trigger = true,
        keymap = {
            -- Bring in line with LSP Suggestion Accept.
            accept = "<Tab>",
        }
    },
})
