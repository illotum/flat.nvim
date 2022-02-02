-- Theme:       flat
-- Description: Solarized without the bullshit, redux.
-- Author:      Alex Valiushko (illotum@gmail.com)
-- License:     MIT
-- Source:      https://github.com/illotum/flat.nvim
local M = {}

local hex = {
    base03  = "#002b36",
    base02  = "#073642",
    base01  = "#586e75",
    base00  = "#657b83",
    base0   = "#839496",
    base1   = "#93a1a1",
    base2   = "#eee8d5",
    base3   = "#fdf6e3",
    yellow  = "#b58900",
    orange  = "#cb4b16",
    red     = "#dc322f",
    magenta = "#d33682",
    violet  = "#6c71c4",
    blue    = "#268bd2",
    cyan    = "#2aa198",
    green   = "#859900",
}

local cterm = {
    base03  = 8,
    base02  = 0,
    base01  = 10,
    base00  = 11,
    base0   = 12,
    base1   = 14,
    base2   = 7,
    base3   = 15,
    yellow  = 3,
    orange  = 9,
    red     = 1,
    magenta = 5,
    violet  = 13,
    blue    = 4,
    cyan    = 6,
    green   = 2,
}
function load_term_colors()
    vim.g.terminal_color_0  = hex.base02
    vim.g.terminal_color_1  = hex.red
    vim.g.terminal_color_2  = hex.green
    vim.g.terminal_color_3  = hex.yellow
    vim.g.terminal_color_4  = hex.blue
    vim.g.terminal_color_5  = hex.magenta
    vim.g.terminal_color_6  = hex.cyan
    vim.g.terminal_color_7  = hex.base2
    vim.g.terminal_color_8  = hex.base03
    vim.g.terminal_color_9  = hex.orange
    vim.g.terminal_color_10 = hex.base01
    vim.g.terminal_color_11 = hex.base00
    vim.g.terminal_color_12 = hex.base0
    vim.g.terminal_color_13 = hex.violet
    vim.g.terminal_color_14 = hex.base1
    vim.g.terminal_color_15 = hex.base3
end

function highlight(group, hl)
    local style = hl.style or "NONE"
    local fg    = hex[hl.fg] or "NONE"
    local bg    = hex[hl.bg] or "NONE"
    local cfg   = cterm[hl.fg] or "NONE"
    local cbg   = cterm[hl.bg] or "NONE"
    local sp    = hl.sp or "NONE"
    vim.cmd(string.format(
	'hi %s guifg=%s guibg=%s guisp=%s gui=%s ctermfg=%s ctermbg=%s cterm=%s',
	group, fg, bg, sp, style, cfg, cbg, style
    ))
    if hl.link then
	vim.cmd("highlight! link " .. group .. " " .. hl.link)
    end
end

function highlight_groups(groups)
    for group, hl in pairs(groups) do
	highlight(group, hl)
    end
end

function M.load(theme)
    -- load_term_colors()
    if vim.o.background == "light" then
	hex.base0, hex.base00 = hex.base00, hex.base0
	hex.base1, hex.base01 = hex.base01, hex.base1
	hex.base2, hex.base02 = hex.base02, hex.base2
	hex.base3, hex.base03 = hex.base03, hex.base3
	cterm.base0, cterm.base00 = cterm.base00, cterm.base0
	cterm.base1, cterm.base01 = cterm.base01, cterm.base1
	cterm.base2, cterm.base02 = cterm.base02, cterm.base2
	cterm.base3, cterm.base03 = cterm.base03, cterm.base3
    end
    for _, groups in pairs(theme) do
	highlight_groups(groups)
    end
end

return M;
