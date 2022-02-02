-- Theme:       flat
-- Description: Solarized without the bullshit, redux.
-- Author:      Alex Valiushko (illotum@gmail.com)
-- License:     MIT
-- Source:      https://github.com/illotum/flat.nvim

local M = {
    colors = {
	term = {
	    base02  = 0,
	    red     = 1,
	    green   = 2,
	    yellow  = 3,
	    blue    = 4,
	    magenta = 5,
	    cyan    = 6,
	    base2   = 7,
	    base03  = 8,
	    orange  = 9,
	    base01  = 10,
	    base00  = 11,
	    base0   = 12,
	    violet  = 13,
	    base1   = 14,
	    base3   = 15,
	},
	hex = {
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
	},
    },
}

function M.load(theme)
    local colors = get_colors(vim.o.background)
    load_term_colors()
    for group, hl in pairs(theme) do
	highlight(group, hl, colors)
    end
end

-- Render color palette depending on the background setting.
function get_colors(background)
    local c = { term = {}, hex = {} }
    for k, v in pairs(M.colors.term) do
	c.term[k] = v
    end
    for k, v in pairs(M.colors.hex) do
	c.hex[k] = v
    end
    if background == "light" then
	c.hex.base0, c.hex.base00 = c.hex.base00, c.hex.base0
	c.hex.base1, c.hex.base01 = c.hex.base01, c.hex.base1
	c.hex.base2, c.hex.base02 = c.hex.base02, c.hex.base2
	c.hex.base3, c.hex.base03 = c.hex.base03, c.hex.base3
	c.term.base0, c.term.base00 = c.term.base00, c.term.base0
	c.term.base1, c.term.base01 = c.term.base01, c.term.base1
	c.term.base2, c.term.base02 = c.term.base02, c.term.base2
	c.term.base3, c.term.base03 = c.term.base03, c.term.base3
    end
    return c
end

-- Load term colors in case we run `termguicolors`.
function load_term_colors()
    vim.g.terminal_color_0  = M.colors.hex.base02
    vim.g.terminal_color_1  = M.colors.hex.red
    vim.g.terminal_color_2  = M.colors.hex.green
    vim.g.terminal_color_3  = M.colors.hex.yellow
    vim.g.terminal_color_4  = M.colors.hex.blue
    vim.g.terminal_color_5  = M.colors.hex.magenta
    vim.g.terminal_color_6  = M.colors.hex.cyan
    vim.g.terminal_color_7  = M.colors.hex.base2
    vim.g.terminal_color_8  = M.colors.hex.base03
    vim.g.terminal_color_9  = M.colors.hex.orange
    vim.g.terminal_color_10 = M.colors.hex.base01
    vim.g.terminal_color_11 = M.colors.hex.base00
    vim.g.terminal_color_12 = M.colors.hex.base0
    vim.g.terminal_color_13 = M.colors.hex.violet
    vim.g.terminal_color_14 = M.colors.hex.base1
    vim.g.terminal_color_15 = M.colors.hex.base3
end

-- Highlight the group with given colors. All missing fields are set to NONE
function highlight(group, hl, colors)
    local style = hl.style or "NONE"
    local fg    = colors.hex[hl.fg] or "NONE"
    local bg    = colors.hex[hl.bg] or "NONE"
    local cfg   = colors.term[hl.fg] or "NONE"
    local cbg   = colors.term[hl.bg] or "NONE"
    local sp    = hl.sp or "NONE"
    vim.cmd(string.format(
	'hi %s guifg=%s guibg=%s guisp=%s gui=%s ctermfg=%s ctermbg=%s cterm=%s',
	group, fg, bg, sp, style, cfg, cbg, style
    ))
    if hl.link then
	vim.cmd("highlight! link " .. group .. " " .. hl.link)
    end
end

return M;
