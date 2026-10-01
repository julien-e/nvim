-- Tokyo Night Day — variante renforcée (contraste WCAG AAA, ≥ 7:1 sur le fond)
-- Même palette que ~/.config/kitty/tokyo-night-day-aaa.conf

local M = {}

M.base_30 = {
  white = "#0c1b3f",
  darker_black = "#d5d6db",
  black = "#e1e2e7", --  nvim bg
  black2 = "#d6d8df",
  one_bg = "#cfd1da",
  one_bg2 = "#c4c8da",
  one_bg3 = "#b9bdd0",
  grey = "#3a406b",
  grey_fg = "#3a406b",
  grey_fg2 = "#303654",
  light_grey = "#303654",
  red = "#8b0028",
  baby_pink = "#812020",
  pink = "#8c0022",
  line = "#c4c8da", -- for lines like vertsplit
  green = "#354821",
  vibrant_green = "#334b11",
  nord_blue = "#003f96",
  blue = "#044091",
  yellow = "#543f22",
  sun = "#583f12",
  purple = "#5301c0",
  dark_purple = "#5200c4",
  teal = "#004a63",
  orange = "#6a3700",
  cyan = "#004961",
  statusline_bg = "#d6d8df",
  lightbg = "#c4c8da",
  pmenu_bg = "#044091",
  folder_bg = "#044091",
}

M.base_16 = {
  base00 = "#e1e2e7",
  base01 = "#d6d8df",
  base02 = "#c4c8da",
  base03 = "#b9bdd0",
  base04 = "#3a406b",
  base05 = "#0c1b3f",
  base06 = "#091633",
  base07 = "#050d24",
  base08 = "#8b0028",
  base09 = "#6a3700",
  base0A = "#543f22",
  base0B = "#354821",
  base0C = "#004961",
  base0D = "#044091",
  base0E = "#5301c0",
  base0F = "#812020",
}

M.type = "light"

M.polish_hl = {
  defaults = {
    Comment = { fg = M.base_30.grey_fg, italic = true },
    LineNr = { fg = M.base_30.grey },
    CursorLineNr = { fg = M.base_30.white, bold = true },
    Visual = { bg = M.base_16.base02 },
    Pmenu = { bg = M.base_30.black2 },
    FloatBorder = { fg = M.base_30.grey_fg },
  },
  treesitter = {
    ["@comment"] = { fg = M.base_30.grey_fg, italic = true },
    ["@variable"] = { fg = M.base_16.base05 },
  },
}

M = require("base46").override_theme(M, "tokyoday_aaa")

return M
