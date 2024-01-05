local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local wk = require("which-key")

wk.register({
    h = {
        name = "harpoon",
        a = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "add file" },
        q = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "quick menu" },
    }
}, { prefix = "<leader>" })
