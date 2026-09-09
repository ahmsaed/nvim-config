-- RAGE colorscheme for Neovim
-- Converted from the Zed theme "RAGE" by iraemachina
-- https://zed.dev/schema/themes/v0.2.0.json

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "rage"

local c = {
  bg = "#0E111A",
  bg_surface = "#0D1117",
  bg_elevated = "#161B22",
  bg_element = "#1F2937",
  bg_hover = "#374151",
  bg_active = "#4B5563",
  fg = "#D5DCE5",
  fg_muted = "#9BA3AE",
  fg_placeholder = "#7E8691",
  fg_disabled = "#585F68",
  bright_fg = "#F0F5FA",
  accent = "#FF8B6B",

  border = "#0E111A",
  line_nr = "#7E8691",
  active_line_nr = "#FF8B6B",
  cursorline = "#161B22",
  selection = "#23304A",

  comment = "#7E8691",
  comment_doc = "#9BA3AE",
  constant = "#FF8B6B",
  constructor = "#E2B8FF",
  enum = "#EBB265",
  func = "#92A9E8",
  keyword = "#FF8B6B",
  number = "#89D0FF",
  operator = "#9BE2FD",
  property = "#EBB265",
  punct = "#9BE2FD",
  punct_bracket = "#E1C551",
  punct_delim = "#525C63",
  string = "#B8DA9D",
  string_esc = "#92A9E8",
  tag = "#8EF797",
  type = "#EBB265",
  variable = "#C5C8D9",
  variable_special = "#C780BF",
  boolean = "#FF8B6B",
  label = "#89D0FF",
  link_text = "#89D0FF",
  link_uri = "#B5E6FF",
  title = "#92A9E8",

  error = "#FF6159",
  warning = "#E2A932",
  info = "#68B6FF",
  hint = "#9BA3AE",

  git_add = "#4FC960",
  git_change = "#E2A932",
  git_delete = "#FF8B82",
  git_rename = "#68B6FF",
  git_conflict = "#E2A932",
}

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI -----------------------------------------------------------
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.fg, bg = c.bg })
hl("FloatBorder", { fg = c.border, bg = c.bg })
hl("FloatTitle", { fg = c.accent, bg = c.bg, bold = true })
hl("SignColumn", { fg = c.fg_muted, bg = c.bg })
hl("ColorColumn", { bg = c.bg })
hl("Cursor", { fg = c.bg, bg = c.fg })
hl("CursorLine", { bg = c.cursorline })
hl("CursorLineNr", { fg = c.active_line_nr, bold = true })
hl("LineNr", { fg = c.line_nr })
hl("Visual", { bg = c.selection })
hl("VisualNOS", { bg = c.selection })
hl("Search", { fg = c.bg, bg = c.warning })
hl("IncSearch", { fg = c.bg, bg = c.accent })
hl("CurSearch", { fg = c.bg, bg = c.accent })
hl("Substitute", { fg = c.bg, bg = c.accent })
hl("MatchParen", { fg = c.accent, bold = true })
hl("Whitespace", { fg = c.fg_disabled })
hl("NonText", { fg = c.fg_disabled })
hl("EndOfBuffer", { fg = c.bg })
hl("Folded", { fg = c.fg_muted, bg = c.bg_elevated })
hl("FoldColumn", { fg = c.fg_muted, bg = c.bg })

hl("StatusLine", { fg = c.fg, bg = c.bg })
hl("StatusLineNC", { fg = c.fg_muted, bg = c.bg })
hl("WinBar", { fg = c.fg, bg = c.bg })
hl("WinBarNC", { fg = c.fg_muted, bg = c.bg })
hl("WinSeparator", { fg = c.border, bg = c.bg })
hl("VertSplit", { fg = c.border, bg = c.bg })

hl("TabLine", { fg = c.fg_muted, bg = c.bg })
hl("TabLineFill", { bg = c.bg })
hl("TabLineSel", { fg = c.fg, bg = c.bg, bold = true })

hl("Pmenu", { fg = c.fg, bg = c.bg })
hl("PmenuSel", { fg = c.fg, bg = c.bg_hover })
hl("PmenuSbar", { bg = c.bg })
hl("PmenuThumb", { bg = c.bg_active })
hl("WildMenu", { fg = c.bg, bg = c.accent })

hl("Directory", { fg = c.info })
hl("Title", { fg = c.title, bold = true })
hl("ModeMsg", { fg = c.fg })
hl("MoreMsg", { fg = c.info })
hl("Question", { fg = c.info })
hl("ErrorMsg", { fg = c.error })
hl("WarningMsg", { fg = c.warning })

-- Syntax ----------------------------------------------------------------
hl("Comment", { fg = c.comment, italic = true })
hl("SpecialComment", { fg = c.comment_doc, italic = true })
hl("Todo", { fg = c.bg, bg = c.warning, bold = true })

hl("Constant", { fg = c.constant })
hl("String", { fg = c.string })
hl("Character", { fg = c.string })
hl("Number", { fg = c.number })
hl("Boolean", { fg = c.boolean })
hl("Float", { fg = c.number })

hl("Identifier", { fg = c.variable })
hl("Function", { fg = c.func })

hl("Statement", { fg = c.keyword })
hl("Conditional", { fg = c.keyword })
hl("Repeat", { fg = c.keyword })
hl("Label", { fg = c.label })
hl("Operator", { fg = c.operator })
hl("Keyword", { fg = c.keyword })
hl("Exception", { fg = c.keyword })

hl("PreProc", { fg = c.fg })
hl("Include", { fg = c.keyword })
hl("Define", { fg = c.keyword })
hl("Macro", { fg = c.constant })
hl("PreCondit", { fg = c.keyword })

hl("Type", { fg = c.type })
hl("StorageClass", { fg = c.keyword })
hl("Structure", { fg = c.type })
hl("Typedef", { fg = c.type })

hl("Special", { fg = c.punct })
hl("SpecialChar", { fg = c.string_esc })
hl("Tag", { fg = c.tag })
hl("Delimiter", { fg = c.punct_delim })
hl("Debug", { fg = c.error })
hl("Underlined", { fg = c.link_text, underline = true })
hl("Error", { fg = c.error })

-- Diagnostics -------------------------------------------------------------
hl("DiagnosticError", { fg = c.error })
hl("DiagnosticWarn", { fg = c.warning })
hl("DiagnosticInfo", { fg = c.info })
hl("DiagnosticHint", { fg = c.hint })
hl("DiagnosticOk", { fg = c.git_add })
hl("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warning })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })
hl("DiagnosticVirtualTextError", { fg = c.error, bg = c.bg })
hl("DiagnosticVirtualTextWarn", { fg = c.warning, bg = c.bg })
hl("DiagnosticVirtualTextInfo", { fg = c.info, bg = c.bg })
hl("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg })

-- LSP ---------------------------------------------------------------------
hl("LspReferenceText", { bg = c.bg_element })
hl("LspReferenceRead", { bg = c.bg_element })
hl("LspReferenceWrite", { bg = c.bg_element })
hl("LspSignatureActiveParameter", { fg = c.accent, bold = true })
hl("LspInlayHint", { fg = c.fg_disabled, bg = c.bg, italic = true })

-- Diff / Git ----------------------------------------------------------------
hl("DiffAdd", { fg = c.git_add, bg = c.bg })
hl("DiffChange", { fg = c.git_change, bg = c.bg })
hl("DiffDelete", { fg = c.git_delete, bg = c.bg })
hl("DiffText", { fg = c.info, bg = c.bg })

hl("GitSignsAdd", { fg = c.git_add })
hl("GitSignsChange", { fg = c.git_change })
hl("GitSignsDelete", { fg = c.git_delete })
hl("GitSignsTopdelete", { fg = c.git_delete })
hl("GitSignsChangedelete", { fg = c.git_change })

-- Treesitter ----------------------------------------------------------------
hl("@variable", { fg = c.variable })
hl("@variable.builtin", { fg = c.variable_special, italic = true })
hl("@variable.parameter", { fg = c.variable })
hl("@variable.member", { fg = c.property })

hl("@constant", { fg = c.constant })
hl("@constant.builtin", { fg = c.constant, bold = true })
hl("@constant.macro", { fg = c.constant })

hl("@module", { fg = c.type })
hl("@label", { fg = c.label })

hl("@string", { fg = c.string })
hl("@string.escape", { fg = c.string_esc })
hl("@string.special", { fg = c.string })
hl("@character", { fg = c.string })
hl("@character.special", { fg = c.string_esc })

hl("@boolean", { fg = c.boolean })
hl("@number", { fg = c.number })
hl("@number.float", { fg = c.number })

hl("@type", { fg = c.type })
hl("@type.builtin", { fg = c.type, italic = true })
hl("@type.definition", { fg = c.type })
hl("@attribute", { fg = c.info })
hl("@property", { fg = c.property })

hl("@function", { fg = c.func })
hl("@function.builtin", { fg = c.func, italic = true })
hl("@function.macro", { fg = c.func })
hl("@function.method", { fg = c.func })
hl("@constructor", { fg = c.constructor })

hl("@operator", { fg = c.operator })
hl("@keyword", { fg = c.keyword })
hl("@keyword.function", { fg = c.keyword })
hl("@keyword.operator", { fg = c.keyword })
hl("@keyword.return", { fg = c.keyword })
hl("@keyword.conditional", { fg = c.keyword })
hl("@keyword.repeat", { fg = c.keyword })
hl("@keyword.import", { fg = c.keyword })
hl("@keyword.exception", { fg = c.keyword })

hl("@punctuation.delimiter", { fg = c.punct_delim })
hl("@punctuation.bracket", { fg = c.punct_bracket })
hl("@punctuation.special", { fg = c.punct })

hl("@comment", { fg = c.comment, italic = true })
hl("@comment.documentation", { fg = c.comment_doc, italic = true })

hl("@tag", { fg = c.tag })
hl("@tag.attribute", { fg = c.info })
hl("@tag.delimiter", { fg = c.punct_delim })

hl("@markup.heading", { fg = c.title, bold = true })
hl("@markup.link", { fg = c.link_text, underline = true })
hl("@markup.link.url", { fg = c.link_uri, underline = true })
hl("@markup.raw", { fg = c.string })
hl("@markup.strong", { bold = true })
hl("@markup.italic", { italic = true })

-- Popular plugin groups (Telescope, WhichKey, nvim-cmp) ---------------------
hl("TelescopeNormal", { fg = c.fg, bg = c.bg })
hl("TelescopeBorder", { fg = c.border, bg = c.bg })
hl("TelescopeSelection", { bg = c.bg_hover })
hl("TelescopeMatching", { fg = c.accent, bold = true })
hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg })
hl("TelescopePromptBorder", { fg = c.border, bg = c.bg })

hl("WhichKey", { fg = c.accent })
hl("WhichKeyGroup", { fg = c.func })
hl("WhichKeyDesc", { fg = c.fg })
hl("WhichKeySeparator", { fg = c.comment })

hl("CmpItemAbbr", { fg = c.fg })
hl("CmpItemAbbrMatch", { fg = c.accent, bold = true })
hl("CmpItemKind", { fg = c.type })
hl("CmpItemMenu", { fg = c.fg_muted })

hl("NvimTreeNormal", { fg = c.fg, bg = c.bg })
hl("NvimTreeFolderIcon", { fg = c.info })
hl("NvimTreeFolderName", { fg = c.fg })
hl("NvimTreeRootFolder", { fg = c.accent, bold = true })
hl("NvimTreeIndentMarker", { fg = c.punct_delim })

hl("BufferLineFill", { bg = c.bg })
hl("NotifyERRORBorder", { fg = c.error })
hl("NotifyWARNBorder", { fg = c.warning })
hl("NotifyINFOBorder", { fg = c.info })

-- Snacks.nvim (picker, explorer, dashboard, notifier) -----------------------
hl("SnacksNormal", { fg = c.fg, bg = c.bg })
hl("SnacksNormalNC", { fg = c.fg, bg = c.bg })
hl("SnacksBackdrop", { bg = c.bg })
hl("SnacksWinBar", { fg = c.fg, bg = c.bg })
hl("SnacksWinBarNC", { fg = c.fg_muted, bg = c.bg })

hl("SnacksPicker", { fg = c.fg, bg = c.bg })
hl("SnacksPickerBorder", { fg = c.border, bg = c.bg })
hl("SnacksPickerTitle", { fg = c.accent, bg = c.bg, bold = true })
hl("SnacksPickerBox", { fg = c.fg, bg = c.bg })
hl("SnacksPickerBoxBorder", { fg = c.border, bg = c.bg })
hl("SnacksPickerInput", { fg = c.fg, bg = c.bg })
hl("SnacksPickerInputBorder", { fg = c.border, bg = c.bg })
hl("SnacksPickerInputTitle", { fg = c.accent, bg = c.bg, bold = true })
hl("SnacksPickerPreview", { fg = c.fg, bg = c.bg })
hl("SnacksPickerPreviewBorder", { fg = c.border, bg = c.bg })
hl("SnacksPickerList", { fg = c.fg, bg = c.bg })
hl("SnacksPickerListBorder", { fg = c.border, bg = c.bg })
hl("SnacksPickerListCursorLine", { bg = c.cursorline })
hl("SnacksPickerCursorLine", { bg = c.cursorline })
hl("SnacksPickerDir", { fg = c.fg_muted })
hl("SnacksPickerFile", { fg = c.fg })
hl("SnacksPickerMatch", { fg = c.accent, bold = true })
hl("SnacksPickerCount", { fg = c.fg_muted })
hl("SnacksPickerTree", { fg = c.punct_delim })
hl("SnacksPickerPathHidden", { fg = c.fg_disabled })
hl("SnacksPickerPathIgnored", { fg = c.fg_disabled })
hl("SnacksPickerGitStatusUntracked", { fg = c.git_add })
hl("SnacksPickerGitStatusModified", { fg = c.git_change })
hl("SnacksPickerGitStatusDeleted", { fg = c.git_delete })

hl("SnacksIndent", { fg = c.punct_delim })
hl("SnacksIndentScope", { fg = c.number })

-- In case indent-blankline / mini.indentscope is used instead of snacks.indent
hl("IblScope", { fg = c.number })
hl("IblIndent", { fg = c.punct_delim })
hl("IndentBlanklineContextChar", { fg = c.number })
hl("MiniIndentscopeSymbol", { fg = c.number })

hl("SnacksDashboardNormal", { fg = c.fg, bg = c.bg })
hl("SnacksDashboardHeader", { fg = c.accent })
hl("SnacksDashboardIcon", { fg = c.func })
hl("SnacksDashboardDesc", { fg = c.fg })
hl("SnacksDashboardKey", { fg = c.warning })
hl("SnacksDashboardFooter", { fg = c.fg_muted, italic = true })

hl("SnacksNotifierBg", { bg = c.bg })
hl("SnacksNotifierBorderInfo", { fg = c.info })
hl("SnacksNotifierBorderWarn", { fg = c.warning })
hl("SnacksNotifierBorderError", { fg = c.error })

-- Terminal colors -----------------------------------------------------------
vim.g.terminal_color_0 = "#0D1117"
vim.g.terminal_color_1 = "#FF8B82"
vim.g.terminal_color_2 = "#4FC960"
vim.g.terminal_color_3 = "#E2A932"
vim.g.terminal_color_4 = "#68B6FF"
vim.g.terminal_color_5 = "#CC9CFF"
vim.g.terminal_color_6 = "#49D5DF"
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.fg_disabled
vim.g.terminal_color_9 = "#FFB1A8"
vim.g.terminal_color_10 = "#66E374"
vim.g.terminal_color_11 = "#F3C351"
vim.g.terminal_color_12 = "#89D0FF"
vim.g.terminal_color_13 = "#E2B8FF"
vim.g.terminal_color_14 = "#66E4ED"
vim.g.terminal_color_15 = c.bright_fg
