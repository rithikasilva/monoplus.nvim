local c = require("monoplus.colors").setup()

local monoplus = {}

monoplus.normal = {
    a = { fg = c.bg, bg = c.blue, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

monoplus.insert = {
    a = { fg = c.bg, bg = c.white, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

monoplus.command = {
    a = { fg = c.bg, bg = c.orange, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

monoplus.visual = {
    a = { fg = c.bg, bg = c.pink, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

monoplus.replace = {
    a = { fg = c.bg, bg = c.pink, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

monoplus.inactive = {
    a = { fg = c.white, bg = c.focus_high, gui = "bold" },
    b = { fg = c.fg, bg = c.focus_high },
    c = { fg = c.fg, bg = c.bg }
}

return monoplus
