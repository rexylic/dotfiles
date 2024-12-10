local light_fg = "#125c4a"
local light_bg = "#feffff"
local dark_fg = "#78c2b0"
local dark_bg = "#312e30"

local l = os.getenv("BG"):sub(1, 1)

-- local minibase16 = require('mini.base16')
-- local light_palette = minibase16.mini_palette(
--   light_bg,
-- 	light_fg,
-- 	85
-- )
-- local dark_palette = minibase16.mini_palette(
-- 	dark_bg,
-- 	dark_fg,
-- 	85
-- )
-- require('mini.base16').setup {
-- 	palette = l == 'l' and light_palette or dark_palette
-- }

if l == 'l' then
	require('mini.hues').setup {
		background = light_bg,
		foreground = light_fg,
		n_hues = 8,
	}
else
	require('mini.hues').setup {
		background = dark_bg,
		foreground = dark_fg,
		n_hues = 8,
	}
end
