local theme = require("monoplus.theme").setup()
local monoplus_colors = require("monoplus.colors").setup()
local M = {}

local function highlight(group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or ""

    local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

    if color.link then
        vim.cmd("highlight! link " .. group .. " " .. color.link)
    else
        vim.cmd(hl)
    end
end

local function terminal()
    -- dark mode foreground color
    vim.g.terminal_color_0 = monoplus_colors.fg
    vim.g.terminal_color_8 = monoplus_colors.fg

    -- light mode foreground color
    vim.g.terminal_color_7 = monoplus_colors.fg
    vim.g.terminal_color_15 = monoplus_colors.fg

    -- red
    vim.g.terminal_color_1 = monoplus_colors.pink
    vim.g.terminal_color_9 = monoplus_colors.pink

    -- green
    vim.g.terminal_color_2 = monoplus_colors.blue
    vim.g.terminal_color_10 = monoplus_colors.blue

    -- yellow
    vim.g.terminal_color_3 = monoplus_colors.gray
    vim.g.terminal_color_11 = monoplus_colors.gray

    -- blue
    vim.g.terminal_color_4 = monoplus_colors.purple
    vim.g.terminal_color_12 = monoplus_colors.purple

    -- magenta
    vim.g.terminal_color_5 = monoplus_colors.white
    vim.g.terminal_color_13 = monoplus_colors.white

    -- cyan
    vim.g.terminal_color_6 = monoplus_colors.orange
    vim.g.terminal_color_14 = monoplus_colors.orange
end

function M.colorscheme()
    if vim.g.color_name then
        vim.cmd("hightlight clear")
    end

    vim.g.colors_name = "monoplus"

    for group, color in pairs(theme.base) do
        highlight(group, color)
    end

    for group, color in pairs(theme.plugins) do
        highlight(group, color)
    end

    terminal()
end

return M
