-- Chronicler — Neovim
-- Art Nouveau: deep forest parchment, iron gall ink, copper, forest green, carmine
-- Uses the aether.nvim plugin with custom dark botanical palette

return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background — deep forest parchment / aged field notebook
                bg          = "#2C2416",
                bg_dark     = "#1A1610",
                bg_highlight = "#5A4E3A",

                -- Foreground — iron gall ink on parchment
                fg          = "#E8DFC8",
                fg_dark     = "#C8B898",
                comment     = "#7A6E58",

                -- Accent colors — Art Nouveau botanical palette
                -- red: errors — terracotta
                red         = "#C0503A",
                -- orange: constants — warm ochre
                orange      = "#D4924A",
                -- yellow: types, warnings — burnished copper
                yellow      = "#B87333",
                -- green: strings — forest green
                green       = "#4A7C59",
                -- cyan: parameters — muted teal
                cyan        = "#5A8AAA",
                -- blue: functions — slate blue
                blue        = "#4A6E8A",
                -- purple: keywords — violet-brown
                purple      = "#A12577",
                -- magenta: special — deep carmine
                magenta     = "#6B4E71",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
