-- return {
-- 	{ "neanias/everforest-nvim" },
-- 	{
-- 		"LazyVim/LazyVim",
-- 		opts = {
-- 			colorscheme = "everforest",
-- 			background = "hard",
-- 		},
-- 	},
-- }

local M = {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				vim.cmd("set termguicolors")

				-- ======================
				-- Base16 / Base30 palette
				-- ======================
				local colors = {
					bg = "#061115", -- base00
					fg = "#D9D7D6", -- base05

					primary = "#F26E74", -- base08 (keywords)
					secondary = "#82C29C", -- base0B (strings)
					info = "#79AAEB", -- base0D (functions)
					warning = "#ECD28B", -- base09 (types)
					accent = "#C488EC", -- base0E (operators)
					danger = "#F16269", -- base0F
					success = "#82C29C",

					purple = "#C488EC",
					cyan = "#6791C9",
					orange = "#E9967E",

					muted = "#3B464A", -- comments
					subtle = "#192428", -- selection
					dark = "#0C171B", -- cursorline
					border = "#222D31",
					selection = "#192428",
				}

				vim.cmd("highlight clear")

				local function set_hl(group, opts)
					vim.api.nvim_set_hl(0, group, opts)
				end

				-- ======================
				-- Core UI
				-- ======================
				set_hl("Normal", { fg = colors.fg, bg = colors.bg })
				set_hl("CursorLine", { bg = colors.dark })
				set_hl("CursorLineNr", { fg = colors.primary, bold = true })
				set_hl("LineNr", { fg = colors.muted })
				set_hl("Visual", { bg = colors.selection })
				set_hl("VertSplit", { fg = colors.border })
				set_hl("WinSeparator", { fg = colors.border })

				-- ======================
				-- Syntax
				-- ======================
				set_hl("Comment", { fg = colors.muted, italic = true })
				set_hl("String", { fg = colors.secondary })
				set_hl("Character", { fg = colors.secondary })
				set_hl("Number", { fg = colors.orange })
				set_hl("Boolean", { fg = colors.primary, bold = true })
				set_hl("Float", { fg = colors.orange })
				set_hl("Identifier", { fg = colors.fg })
				set_hl("Function", { fg = colors.info, bold = true })
				set_hl("Keyword", { fg = colors.primary, bold = true })
				set_hl("Operator", { fg = colors.accent })
				set_hl("Type", { fg = colors.warning, italic = true })
				set_hl("Constant", { fg = colors.purple })

				-- ======================
				--  tabline
				-- ======================

				set_hl("TabLine", { fg = colors.muted, bg = colors.dark })
				set_hl("TabLineFill", { bg = colors.bg })
				set_hl("TabLineSel", { fg = colors.primary, bg = colors.bg, bold = true })

				-- ======================
				-- Popup / UI elements
				-- ======================
				set_hl("Pmenu", { fg = colors.fg, bg = colors.dark })
				set_hl("PmenuSel", { fg = colors.bg, bg = colors.primary })
				set_hl("StatusLine", { fg = colors.fg, bg = colors.dark })
				set_hl("StatusLineNC", { fg = colors.muted, bg = colors.dark })

				-- ======================
				-- Diagnostics
				-- ======================
				set_hl("DiagnosticError", { fg = colors.danger })
				set_hl("DiagnosticWarn", { fg = colors.warning })
				set_hl("DiagnosticInfo", { fg = colors.info })
				set_hl("DiagnosticHint", { fg = colors.muted })

				set_hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.danger })
				set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warning })
				set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
				set_hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.muted })

				-- ======================
				-- Treesitter
				-- ======================
				set_hl("@comment", { link = "Comment" })
				set_hl("@string", { link = "String" })
				set_hl("@function", { link = "Function" })
				set_hl("@keyword", { link = "Keyword" })
				set_hl("@type", { link = "Type" })
				set_hl("@variable", { fg = colors.fg })
				set_hl("@operator", { link = "Operator" })
				set_hl("@constant.builtin", { fg = colors.danger, bold = true })
				set_hl("@function.builtin", { fg = colors.accent, bold = true })

				vim.g.colors_name = "rxyhn-base16"
			end,
		},
	},
}

return M
