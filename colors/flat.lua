-- Theme:       flat
-- Description: Solarized without the bullshit, redux.
-- Author:      Alex Valiushko (illotum@gmail.com)
-- License:     MIT
-- Source:      https://github.com/illotum/flat.nvim
local flat = require("flat")

vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "flat"

local theme = {
    syntax = {
	Type           = { fg   = "yellow" },
	StorageClass   = { link = "Type" },
	Structure      = { link = "Type" },
	Typedef        = { link = "Type" },
	Constant       = { fg   = "cyan" },
	Character      = { link = "Constant" },
	Boolean        = { link = "Constant" },
	String         = { link = "Constant" },
	Number         = { fg   = "blue" },
	Float          = { link = "Number" },
	Statement      = { fg   = "green" },
	Label          = { link = "Statement" },
	Operator       = { link = "Statement" },
	Exception      = { link = "Statement" },
	Conditional    = { fg   = "green" },
	Keyword        = { fg   = "green" },
	Repeat         = { fg   = "green" },
	PreProc        = { fg   = "orange" },
	Include        = { link = "PreProc" },
	Define         = { link = "PreProc" },
	Macro          = { link = "PreProc" },
	PreCondit      = { link = "PreProc" },
	Special        = { fg   = "red" },
	SpecialChar    = { link = "Special" },
	Tag            = { link = "Special" },
	Delimiter      = { link = "Special" },
	SpecialComment = { link = "Special" },
	Debug          = { link = "Special" },
	Identifier     = { fg   = "blue" },
	Function       = { link = "Identifier" },
	Comment        = { fg   = "base01",  style = "italic" },
	Underlined     = { fg   = "blue",    style = "underline" },
	Todo           = { fg   = "magenta", style = "bold" },
	Error          = { fg   = "red",     style = "bold" },
    },
    editor = {
	Normal           = { fg   = "base0", bg = "base03" },
	NormalFloat      = { link = "Normal" },
	FloatBorder      = { link = "Normal" },
	VertSplit        = { link = "FloatBorder" },
	ColorColumn      = { bg   = "base02" },
	Conceal          = { fg   = "base02" },
	Ignore           = { link = "Conceal" },
	Cursor           = { fg   = "base03", bg = "base0",  style = "reverse" },
	Visual           = { fg   = "base01", bg = "base03", style = "reverse" },
	StatusLine       = { fg   = "base1",  bg = "base02", style = "reverse" },
	StatusLineNC     = { fg   = "base00", bg = "base02", style = "reverse" },
	VisualNOS        = { bg   = "base02", style = "reverse" },
	StatusLineTerm   = { link = "StatusLine" },
	StatusLineTermNC = { link = "StatusLineNC" },
	CursorIM         = { link = "Cursor" },
	Directory        = { fg   = "blue" },
	DiffAdd          = { fg   = "green" },
	DiffChange       = { fg   = "yellow" },
	DiffDelete       = { fg   = "red" },
	DiffText         = { fg   = "blue",   style = "reverse" },
	ErrorMsg         = { fg   = "red",    style = "reverse" },
	Folded           = { fg   = "base01", style = "italic" },
	FoldColumn       = { link = "Folded" },
	IncSearch        = { fg   = "orange", style = "standout" },
	MatchParen       = { fg   = "red",    bg = "base01", style = "bold" },
	ModeMsg          = { fg   = "blue" },
	MoreMsg          = { link = "ModeMsg" },
	NonText          = { fg   = "base00" },
	EndOfBuffer      = { link = "NonText" },
	Pmenu            = { fg   = "base0",  bg = "base03", style = "reverse" },
	PmenuSel         = { fg   = "base01", bg = "base2",  style = "reverse"},
	PmenuSbar        = { fg   = "base2",  bg = "base0",  style = "reverse"},
	PmenuThumb       = { fg   = "base0",  bg = "base03", style = "reverse"},
	Question         = { fg   = "cyan" },
	Search           = { fg   = "yellow", style = "reverse" },
	QuickFixLine     = { link = "Search" },
	SpellBad         = { fg   = "red",    style = "italic,undercurl" },
	SpellCap         = { fg   = "violet", style = "italic,undercurl" },
	SpellLocal       = { fg   = "yellow", style = "italic,undercurl" },
	SpellRare        = { fg   = "cyan",   style = "italic,undercurl" },
	Tabline          = { fg   = "base0", bg = "base02", sp = "base0", style = "underline" },
	TabLineFill      = { link = "TabLine" },
	TablineSel       = { fg   = "base01", bg = "base2", sp = "base0", style = "underline,reverse" },
	Title            = { fg   = "orange" },
	WildMenu         = { fg   = "base2", bg = "base02", style = "reverse" },
	LineNr           = { fg   = "base01" },
	CursorLine       = { bg   = "base02" },
	CursorColumn     = { link = "CursorLine" },
	CursorLineNr     = { fg   = "yellow" },
	SpecialKey       = { link = "Normal" },
	SignColumn       = { fg   = "base01" },
    },
    ftypes = {
	markdownCode          = { fg = "base01" },
	markdownCodeDelimiter = { link = "markdownCode" },

	TSPunctDelimiter      = { fg = "base01" },

	helpHyperTextJump = { link = "Underlined" },

	DiagnosticDefaultError         = { fg = "red" },
	DiagnosticDefaultInformation   = { fg = "green" },
	DiagnosticDefaultWarning       = { fg = "yellow" },
	DiagnosticDefaultHint          = { fg = "blue" },
	DiagnosticUnderlineError       = { sp = "red",    style = "undercurl" },
	DiagnosticUnderlineInformation = { sp = "green",  style = "undercurl" },
	DiagnosticUnderlineWarning     = { sp = "yellow", style = "undercurl" },
	DiagnosticUnderlineHint        = { sp = "blue",   style = "undercurl" },

	GitSignsDelete = { link = "DiagnosticDefaultError" },
	GitSignsAdd    = { link = "DiagnosticDefaultInformation" },
	GitSignsChange = { link = "DiagnosticDefaultWarning" },
    },
}

flat.load(theme);
