-- Theme:       flat
-- Description: Solarized without the bullshit, redux.
-- Author:      Alex Valiushko (illotum@gmail.com)
-- License:     MIT
-- Source:      https://github.com/illotum/flat.nvim

local _M = {}

_M.palettes = {
  term = {
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
  },
  solarized = {
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
  solarized_new = {
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
    green   = "#719e07",
  },
}

local function setup_palette(p)
  if vim.o.background == "light" then
    p.base0, p.base00 = p.base00, p.base0
    p.base1, p.base01 = p.base01, p.base1
    p.base2, p.base02 = p.base02, p.base2
    p.base3, p.base03 = p.base03, p.base3
  end
  -- aliases
  p.fg = p.base0
  p.fg_high = p.base1
  p.fg_low = p.base01
  p.bg = p.base03
  p.bg_high = p.base02

  return p
end

for name, p in pairs(_M.palettes) do
  _M.palettes[name] = setup_palette(p)
end


function _M.setup(opts)
  opts = opts or {}
  opts.palette = opts.palette or "solarized"

  _M.palettes.hex = _M.palettes[opts.palette]
end

function _M.hex(name)
  return _M.palettes.hex[name]
end

function _M.term(name)
  return _M.palettes.term[name]
end

return _M
