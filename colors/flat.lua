-- Theme:       flat
-- Description: Solarized without the bullshit, redux.
-- Author:      Alex Valiushko (illotum@gmail.com)
-- License:     MIT
-- Source:      https://github.com/illotum/flat.nvim

local theme = {
  -- Syntax
  Normal                   = { fg = "fg", bg = "bg" },
  Terminal                 = { link = "Normal" },
  Type                     = { fg = "yellow" },
  StorageClass             = { link = "Type" },
  Structure                = { link = "Type" },
  Typedef                  = { link = "Type" },
  Constant                 = { fg = "cyan", italic = true },
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
  Comment                  = { fg = "fg_low", italic = true },
  Underlined               = { fg = "blue", underline = true },
  Todo                     = { fg = "magenta", bold = true },
  Error                    = { fg = "red", bold = true },
  NvimInternalError        = { link = "Error" },
  -- TS Syntax
  ['@field']               = { fg = "fg" },
  -- Editor
  NormalFloat              = { link = "Normal" },
  FloatBorder              = { link = "Normal" },
  FloatShadow              = { bg = "bg", blend = 80 },
  FloatShadowThrough       = { bg = "bg", blend = 100 },
  VertSplit                = { link = "FloatBorder" },
  ColorColumn              = { bg = "bg_high" },
  Conceal                  = { fg = "fg_low" },
  Ignore                   = { link = "Conceal" },
  Cursor                   = { fg = "bg", bg = "fg", reverse = true },
  Visual                   = { fg = "fg_low", bg = "bg", reverse = true },
  StatusLine               = { fg = "fg_high", bg = "bg_high", reverse = true },
  StatusLineTerm           = { link = "StatusLine" },
  Tabline                  = { fg = "fg_high", bg = "bg_high", underline = true },
  VisualNOS                = { bg = "bg_high", reverse = true },
  CursorIM                 = { link = "Cursor" },
  Directory                = { fg = "blue" },
  DiffAdd                  = { fg = "green" },
  DiffChange               = { fg = "yellow" },
  DiffDelete               = { fg = "red", bold = true },
  DiffText                 = { fg = "blue" },
  ErrorMsg                 = { fg = "red", bg = "fg_high", standout = true },
  Folded                   = { fg = "fg_low", underline = true },
  FoldColumn               = { link = "Folded" },
  IncSearch                = { fg = "yellow", standout = true },
  MatchParen               = { fg = "fg", bg = "bg", bold = true },
  ModeMsg                  = { fg = "blue" },
  MoreMsg                  = { link = "ModeMsg" },
  NonText                  = { fg = "fg_low" },
  EndOfBuffer              = { link = "NonText" },
  Pmenu                    = { fg = "fg", bg = "bg_high" },
  PmenuSbar                = { bg = "bg_high" },
  PmenuSel                 = { fg = "fg_xhigh", bg = "fg_low" },
  PmenuThumb               = { bg = "fg_low" },
  Question                 = { fg = "cyan" },
  Search                   = { fg = "yellow", standout = true },
  CurSearch                = { link = "Search" },
  QuickFixLine             = { link = "Search" },
  SpellBad                 = { fg = "red", italic = true, undercurl = true },
  SpellCap                 = { fg = "violet", italic = true, undercurl = true },
  SpellLocal               = { fg = "yellow", italic = true, undercurl = true },
  SpellRare                = { fg = "cyan", italic = true, undercurl = true },
  Title                    = { fg = "orange" },
  WildMenu                 = { fg = "base00", bg = "fg_xhigh", reverse = true },
  LineNr                   = { fg = "fg_low" },
  CursorLine               = { bg = "bg_high" },
  CursorColumn             = { link = "CursorLine" },
  ToolbarLine              = { link = "CursorLine" },
  CursorLineNr             = { link = "CursorLine" },
  SpecialKey               = { link = "Normal" },
  SignColumn               = { link = "LineNr" },
  -- Diagnostic
  DiagnosticError          = { fg = "red" },
  DiagnosticInfo           = { fg = "green" },
  DiagnosticWarn           = { fg = "yellow" },
  DiagnosticHint           = { fg = "fg" },
  DiagnosticOk             = { fg = "cyan" },
  DiagnosticDeprecated     = { fg = "fg_low" },
  DiagnosticUnderlineError = { sp = "red", undercurl = true },
  DiagnosticUnderlineInfo  = { sp = "green", undercurl = true },
  DiagnosticUnderlineWarn  = { sp = "yellow", undercurl = true },
  DiagnosticUnderlineHint  = { sp = "fg", undercurl = true },
  DiagnosticUnderlineOk    = { sp = "cyan", undercurl = true },
  -- Cmp
  CmpItemAbbrDeprecated    = { link = "DiagnosticDeprecated" },
  CmpItemAbbrMatch         = { fg = "fg_xhigh" },
  CmpItemAbbrMatchFuzzy    = { link = "CmpItemAbbrMatch" },
  CmpItemMenu              = { link = "Comment" },
  CmpItemKind              = { link = "Comment" },
  CmpItemKindClass         = { link = "@lsp.type.class" },
  CmpItemKindConstant      = { link = "@constant" },
  CmpItemKindConstructor   = { link = "@constructor" },
  CmpItemKindModule        = { link = "@include" },
  CmpItemKindEnum          = { link = "@lsp.type.enum" },
  CmpItemKindEnumMember    = { link = "@lsp.type.enumMember" },
  CmpItemKindField         = { link = "@field" },
  CmpItemKindFunction      = { link = "@function" },
  CmpItemKindInterface     = { link = "@lsp.type.interface" },
  CmpItemKindKeyword       = { link = "@keyword" },
  CmpItemKindMethod        = { link = "@lsp.type.method" },
  CmpItemKindOperator      = { link = "@operator" },
  CmpItemKindProperty      = { link = "@property" },
  CmpItemKindReference     = { link = "@text.reference" },
  CmpItemKindStruct        = { link = "@lsp.type.struct" },
  CmpItemKindText          = { link = "@text.literal" },
  CmpItemKindUnit          = { link = "@constant.macro" },
  CmpItemKindValue         = { link = "@constant.macro" },
  CmpItemKindVariable      = { link = "@variable" },
  CmpItemKindType          = { link = "@type" },
  CmpItemKindTypeParameter = { link = "@type.definition" },
  CmpItemKindSnippet       = { link = "@macro" },
}


local C = {
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
  solarized_ok = {
    base03  = "#002d38",
    base02  = "#093946",
    base01  = "#5b7279",
    base00  = "#657377",
    base0   = "#98a8a8",
    base1   = "#8faaab",
    base2   = "#f1e9d2",
    base3   = "#fbf7ef",
    yellow  = "#ac8300",
    orange  = "#d56500",
    red     = "#f23749",
    magenta = "#dd459d",
    violet  = "#7d80d1",
    blue    = "#2b90d8",
    cyan    = "#259d94",
    green   = "#819500",
  }
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
  p.fg_xhigh = p.base2
  p.fg_low = p.base01
  p.bg = p.base03
  p.bg_high = p.base02
  return p
end

for name, _ in pairs(C) do
  C[name] = setup_palette(C[name])
end

C.hex = C.solarized_new

-- Apply theme --

vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

for group, hl in pairs(theme) do
  hl = vim.tbl_extend("force", hl, {
    fg = C.hex[hl.fg],
    bg = C.hex[hl.bg],
    sp = C.hex[hl.sp],
    ctermfg = C.term[hl.fg],
    ctermbg = C.term[hl.bg],
  })
  vim.api.nvim_set_hl(0, group, hl)
end

vim.g.colors_name = "flat"
