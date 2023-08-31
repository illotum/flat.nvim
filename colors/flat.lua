-- Theme:       flat
-- Description: Solarized without the bullshit, redux.
-- Author:      Alex Valiushko (illotum@gmail.com)
-- License:     MIT
-- Source:      https://github.com/illotum/flat.nvim

-- Define colors --

local C = {
  term = {
    fg      = 12,
    bg      = 8,
    -- 16 colors
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
  hex = {
    fg      = "#839496",
    bg      = "#002b36",
    -- 16 colors
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
}

if vim.o.background == "light" then
  C.hex.base0, C.hex.base00 = C.hex.base00, C.hex.base0
  C.hex.base1, C.hex.base01 = C.hex.base01, C.hex.base1
  C.hex.base2, C.hex.base02 = C.hex.base02, C.hex.base2
  C.hex.base3, C.hex.base03 = C.hex.base03, C.hex.base3
  C.term.base0, C.term.base00 = C.term.base00, C.term.base0
  C.term.base1, C.term.base01 = C.term.base01, C.term.base1
  C.term.base2, C.term.base02 = C.term.base02, C.term.base2
  C.term.base3, C.term.base03 = C.term.base03, C.term.base3
end

local theme = {
  -- Syntax
  Normal                   = { fg = "fg", bg = "bg" },
  Terminal                 = { link = "Normal" },
  Type                     = { fg = "yellow" },
  StorageClass             = { link = "Type" },
  Structure                = { link = "Type" },
  Typedef                  = { link = "Type" },
  Constant                 = { fg = "cyan" },
  Character                = { link = "Constant" },
  Boolean                  = { link = "Constant" },
  String                   = { link = "Constant" },
  Number                   = { link = "Constant" },
  Float                    = { link = "Number" },
  Statement                = { fg = "green" },
  Label                    = { link = "Statement" },
  Operator                 = { link = "Statement" },
  Exception                = { link = "Statement" },
  Conditional              = { link = "Statement" },
  Keyword                  = { link = "Statement" },
  Repeat                   = { link = "Statement" },
  PreProc                  = { fg = "orange" },
  Include                  = { link = "PreProc" },
  Define                   = { link = "PreProc" },
  Macro                    = { link = "PreProc" },
  PreCondit                = { link = "PreProc" },
  Special                  = { fg = "orange" },
  SpecialChar              = { link = "Special" },
  Tag                      = { link = "Special" },
  Delimiter                = { link = "Special" },
  SpecialComment           = { link = "Special" },
  Debug                    = { link = "Special" },
  Identifier               = { fg = "blue" },
  Function                 = { link = "Identifier" },
  Comment                  = { fg = "base01", italic = true },
  Underlined               = { fg = "blue", underline = true },
  Todo                     = { fg = "magenta", bold = true },
  Error                    = { fg = "red", bold = true },
  -- Editor
  NormalFloat              = { link = "Normal" },
  FloatBorder              = { link = "Normal" },
  VertSplit                = { link = "FloatBorder" },
  ColorColumn              = { bg = "base02" },
  Conceal                  = { fg = "base02" },
  Ignore                   = { link = "Conceal" },
  Cursor                   = { fg = "bg", bg = "fg", reverse = true },
  Visual                   = { fg = "base01", bg = "bg", reverse = true },
  StatusLine               = { fg = "base1", bg = "base02", reverse = true },
  StatusLineNC             = { fg = "base00", bg = "base02", reverse = true },
  Tabline                  = { fg = "fg", bg = "base02", sp = "base0", underline = true },
  TabLineFill              = { link = "TabLine" },
  TablineSel               = { fg = "base01", bg = "base2", sp = "base0", underline = true, reverse = true },
  VisualNOS                = { bg = "base02", reverse = true },
  StatusLineTerm           = { link = "StatusLine" },
  StatusLineTermNC         = { link = "StatusLineNC" },
  CursorIM                 = { link = "Cursor" },
  Directory                = { fg = "blue" },
  DiffAdd                  = { fg = "green" },
  DiffChange               = { fg = "yellow" },
  DiffDelete               = { fg = "red" },
  DiffText                 = { fg = "blue", reverse = true },
  ErrorMsg                 = { fg = "red", reverse = true },
  Folded                   = { fg = "base01", italic = true },
  FoldColumn               = { link = "Folded" },
  IncSearch                = { fg = "orange", standout = true },
  MatchParen               = { fg = "red", bg = "base01", bold = true },
  ModeMsg                  = { fg = "blue" },
  MoreMsg                  = { link = "ModeMsg" },
  NonText                  = { fg = "base00" },
  EndOfBuffer              = { link = "NonText" },
  Pmenu                    = { fg = "fg", bg = "bg", reverse = true },
  PmenuSel                 = { fg = "base01", bg = "base2", reverse = true },
  PmenuSbar                = { fg = "base2", bg = "fg", reverse = true },
  PmenuThumb               = { fg = "fg", bg = "bg", reverse = true },
  Question                 = { fg = "cyan" },
  Search                   = { fg = "yellow", reverse = true },
  CurSearch                = { link = "Search" },
  QuickFixLine             = { link = "Search" },
  SpellBad                 = { fg = "red", italic = true, undercurl = true },
  SpellCap                 = { fg = "violet", italic = true, undercurl = true },
  SpellLocal               = { fg = "yellow", italic = true, undercurl = true },
  SpellRare                = { fg = "cyan", italic = true, undercurl = true },
  Title                    = { fg = "orange" },
  WildMenu                 = { fg = "base2", bg = "base02", reverse = true },
  LineNr                   = { fg = "base01" },
  CursorLine               = { bg = "base02" },
  CursorColumn             = { link = "CursorLine" },
  ToolbarLine              = { link = "CursorLine" },
  CursorLineNr             = { fg = "yellow" },
  SpecialKey               = { link = "Normal" },
  SignColumn               = { fg = "base01" },
  -- fTypes
  markdownCode             = { fg = "base01" },
  markdownCodeDelimiter    = { link = "markdownCode" },
  helpHyperTextJump        = { link = "Underlined" },
  -- TreeSitter overrides
  TSPunctDelimiter         = { fg = "base01" },
  -- Diagnostic
  DiagnosticError          = { fg = "red" },
  DiagnosticInfo           = { fg = "green" },
  DiagnosticWarn           = { fg = "yellow" },
  DiagnosticHint           = { fg = "blue" },
  -- DiagnosticOk           = { fg = "green" },
  DiagnosticUnderlineError = { sp = "red", undercurl = true },
  DiagnosticUnderlineInfo  = { sp = "green", undercurl = true },
  DiagnosticUnderlineWarn  = { sp = "yellow", undercurl = true },
  DiagnosticUnderlineHint  = { sp = "blue", undercurl = true },
  -- DiagnosticUnderlineOk           = { fg = "green", undercurl = true },
  -- Git
  GitSignsDelete           = { link = "DiagnosticDefaultError" },
  GitSignsAdd              = { link = "DiagnosticDefaultInformation" },
  GitSignsChange           = { link = "DiagnosticDefaultWarning" },
}

-- Apply theme --

vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

for group, hl in pairs(theme) do
  vim.api.nvim_set_hl(0, group,
    vim.tbl_extend("keep",
      {
        fg = C.hex[hl.fg],
        bg = C.hex[hl.bg],
        sp = C.hex[hl.sp],
        ctermfg = C.term[hl.fg],
        ctermbg = C.term[hl.bg],
      },
      hl
    )
  )
end

vim.g.colors_name = "flat"
