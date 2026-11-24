-- =========================================================
-- IRON VEIL
-- A dystopian industrial monochrome colorscheme
-- =========================================================

vim.opt.termguicolors = true
vim.g.colors_name = "ironveil"

local c = {
    bg       = "#101214",
    bg_alt   = "#191D20",
    bg_float = "#15191C",
    selection= "#292F33",
    border   = "#343B40",

    fg       = "#C4C8C9",
    fg_dim   = "#899398",
    comment  = "#626B70",

    white    = "#DDE1E2",
    silver   = "#AAB5BA",
    steel    = "#7895A5",
    sage     = "#91A69B",

    red      = "#B56B6B",
    orange   = "#B69B70",
    purple   = "#9691A8",
}

local groups = {
    -- Editor
    Normal       = { fg = c.fg, bg = c.bg },
    NormalFloat  = { fg = c.fg, bg = c.bg_float },
    NormalNC     = { fg = c.fg, bg = c.bg },
    CursorLine   = { bg = c.bg_alt },
    CursorColumn = { bg = c.bg_alt },
    LineNr       = { fg = c.comment },
    CursorLineNr = { fg = c.white, bold = true },
    SignColumn   = { fg = c.comment, bg = c.bg },
    ColorColumn  = { bg = c.bg_alt },

    Visual       = { bg = c.selection },
    Search       = { fg = c.bg, bg = c.steel },
    IncSearch    = { fg = c.bg, bg = c.white },
    MatchParen   = { fg = c.orange, bold = true },

    Pmenu        = { fg = c.fg, bg = c.bg_float },
    PmenuSel     = { fg = c.white, bg = c.selection },
    PmenuSbar    = { bg = c.bg_alt },
    PmenuThumb   = { bg = c.steel },

    StatusLine   = { fg = c.fg, bg = c.bg_alt },
    StatusLineNC = { fg = c.comment, bg = c.bg },
    VertSplit    = { fg = c.border },

    WinSeparator = { fg = c.border },
    FloatBorder  = { fg = c.steel, bg = c.bg_float },

    Directory    = { fg = c.steel },
    Title        = { fg = c.white, bold = true },
    Question     = { fg = c.sage },
    WarningMsg   = { fg = c.orange },
    ErrorMsg     = { fg = c.red },

    -- Syntax
    Comment      = { fg = c.comment, italic = true },

    Constant     = { fg = c.sage },
    String       = { fg = c.sage },
    Character    = { fg = c.sage },
    Number       = { fg = c.orange },
    Boolean      = { fg = c.orange },
    Float        = { fg = c.orange },

    Identifier   = { fg = c.silver },
    Function     = { fg = c.white, bold = true },

    Statement    = { fg = c.steel },
    Conditional  = { fg = c.steel },
    Repeat       = { fg = c.steel },
    Label        = { fg = c.steel },
    Operator     = { fg = c.fg_dim },
    Keyword      = { fg = c.steel, bold = true },
    Exception    = { fg = c.red },

    PreProc      = { fg = c.purple },
    Include      = { fg = c.steel },
    Define       = { fg = c.steel },
    Macro        = { fg = c.purple },

    Type         = { fg = c.silver },
    StorageClass = { fg = c.steel },
    Structure    = { fg = c.silver },
    Typedef      = { fg = c.silver },

    Special      = { fg = c.orange },
    SpecialChar  = { fg = c.orange },
    Todo         = { fg = c.bg, bg = c.orange, bold = true },

    -- Treesitter
    ["@variable"]          = { fg = c.silver },
    ["@function"]          = { fg = c.white },
    ["@function.call"]     = { fg = c.white },
    ["@keyword"]           = { fg = c.steel },
    ["@keyword.function"]  = { fg = c.steel },
    ["@string"]            = { fg = c.sage },
    ["@number"]            = { fg = c.orange },
    ["@type"]              = { fg = c.silver },
    ["@constant"]          = { fg = c.orange },
    ["@comment"]           = { fg = c.comment, italic = true },
    ["@property"]          = { fg = c.silver },
    ["@operator"]          = { fg = c.fg_dim },
    ["@punctuation"]       = { fg = c.fg_dim },
    ["@tag"]               = { fg = c.steel },
    ["@attribute"]         = { fg = c.purple },

    -- Diagnostics
    DiagnosticError = { fg = c.red },
    DiagnosticWarn  = { fg = c.orange },
    DiagnosticInfo  = { fg = c.steel },
    DiagnosticHint  = { fg = c.sage },

    DiagnosticUnderlineError = { undercurl = true, sp = c.red },
    DiagnosticUnderlineWarn  = { undercurl = true, sp = c.orange },
    DiagnosticUnderlineInfo  = { undercurl = true, sp = c.steel },
    DiagnosticUnderlineHint  = { undercurl = true, sp = c.sage },

    -- Git signs
    GitSignsAdd    = { fg = c.sage },
    GitSignsChange = { fg = c.steel },
    GitSignsDelete = { fg = c.red },

    -- Telescope
    TelescopeNormal       = { fg = c.fg, bg = c.bg_float },
    TelescopeBorder       = { fg = c.border, bg = c.bg_float },
    TelescopePromptBorder = { fg = c.steel },
    TelescopeSelection    = { bg = c.selection, bold = true },
    TelescopeMatching     = { fg = c.white, bold = true },
}

for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
end
