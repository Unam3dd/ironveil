-- IRON VEIL
-- Dystopian monochrome Neovim colorscheme

local M = {}

function M.setup()
    vim.opt.termguicolors = true
    vim.g.colors_name = "ironveil"

    local colors = {
        bg = "#101214",
        bg_alt = "#191D20",
        bg_float = "#15191C",
        selection = "#292F33",
        border = "#343B40",

        fg = "#C4C8C9",
        fg_dim = "#899398",
        comment = "#626B70",

        white = "#DDE1E2",
        silver = "#AAB5BA",
        steel = "#7895A5",
        sage = "#91A69B",

        red = "#B56B6B",
        orange = "#B69B70",
        purple = "#9691A8",
    }

    -- Charge les groupes de couleurs
    -- Le fichier principal du thème se trouve dans colors/ironveil.lua

    vim.cmd.colorscheme("ironveil")
end

return M
